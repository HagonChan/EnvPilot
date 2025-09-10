import os
import json
import time
import logging
from openai import OpenAI
from tqdm import tqdm
from typing import List, Dict, Any, Optional
import concurrent.futures

# 配置日志
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
logger = logging.getLogger(__name__)


class Config:
    """配置类，管理所有配置信息"""

    def __init__(
        self,
        api_base: str,
        api_key: str,
        model: str = "deepseek-chat",
        max_retries: int = 3,
        max_workers: int = 8,
        temperature: float = 0.0,
    ):
        if not api_key or not api_base:
            raise ValueError("API_KEY and API_BASE are not set")
        
        self.api_key = api_key
        self.api_base = api_base
        self.model = model
        self.max_retries = max_retries
        self.max_workers = max_workers
        self.temperature = temperature
        
        self.prompt = """
# Agent Environment Configuration Evaluation Task

## Background
I have designed an Agent for automatically configuring the runtime environment of GitHub repositories.

## Success Criteria 
Environment configuration is considered **successful** when **BOTH** conditions are met:

### Condition 1: Test Suite Execution
- **At least one complete test suite** can start, execute, and finish successfully;Examples: unit tests, integration tests, functional tests, etc.
- The testing framework must generate a complete test report structure
- Individual test case failures are acceptable as long as the suite completes

### Condition 2: Core Functionality Verification  
- **Main functional modules** can be imported and used normally
- Basic API calls return expected results
- Core features demonstrated through example code execution

## Failure Conditions
- Testing framework cannot start or execute normally
- Core modules cannot be imported or are fundamentally broken
- Agent exceeds maximum call limit without achieving basic functionality
- No test suite can complete execution

## Important Notes
- Even if 100 test cases fail, if the test suite completes and core functions work, consider it SUCCESS
- Focus on **framework operability** rather than test pass rates
- Distinguish between critical errors (import failures) and non-critical errors (specific test failures)

## Task Requirements
Based on the agent output trajectory I provide, judge whether the environment configuration meets the success criteria above.

## Output Format
1. First line: PASSED or FAILED (direct output, no other text)
2. Following lines: Detailed reasoning explaining your judgment based on the two criteria above
"""


class RuleEvaluator:
    """规则评估器，负责基于规则的评估"""

    def __init__(self, config: Config):
        self.config = config

    def evaluate_by_rule(self, info: Dict[str, Any]) -> Optional[str]:
        """基于规则评估，返回 None 表示需要LLM评估，返回字符串表示规则已确定结果"""
        if not info:
            return None
        
        exit_status = info.get("exit_status", "")
        
        # 检查是否匹配失败规则
        if exit_status in ["submitted (exit_rounds)", "exit_error","", None]:
            return f"FAILED\n规则判定失败: exit_status = {exit_status}"
        
        return None


class TrajectoryProcessor:
    """轨迹文件处理器，负责文件读取和内容处理"""

    def __init__(self, config: Config):
        self.config = config

    def find_traj_files(self, root_dir: str) -> List[str]:
        """查找所有轨迹文件"""
        traj_files = []
        for root, dirs, files in os.walk(root_dir):
            for file in files:
                if file.endswith(".traj"):
                    traj_files.append(os.path.join(root, file))
        return traj_files

    def _read_json_file(self, file_path: str) -> Dict[str, Any]:
        """读取JSON文件的通用方法"""
        try:
            with open(file_path, "r", encoding="utf-8") as file:
                return json.load(file)
        except Exception as e:
            logger.error(f"读取文件 {file_path} 时出错: {e}")
            return {}

    def extract_history(self, file_path: str) -> List[Any]:
        """从轨迹文件中提取历史记录"""
        data = self._read_json_file(file_path)
        return data.get("history", [])
        
    def extract_info(self, file_path: str) -> Dict[str, Any]:
        """从轨迹文件中提取info字段"""
        data = self._read_json_file(file_path)
        return data.get("info", {})


class LLMJudge:
    """LLM判断器，负责调用API进行评估"""

    def __init__(self, config: Config):
        self.config = config
        self.client = OpenAI(api_key=config.api_key, base_url=config.api_base)

    def evaluate(self, processed_history: str) -> str:
        """调用LLM进行评估"""
        for attempt in range(self.config.max_retries):
            try:
                response = self.client.chat.completions.create(
                    model=self.config.model,
                    messages=[
                        {"role": "system", "content": self.config.prompt},
                        {"role": "user", "content": processed_history},
                    ],
                    stream=False,
                    temperature=self.config.temperature,
                )
                return response.choices[0].message.content

            except Exception as e:
                error_msg = str(e)
                logger.warning(f"API调用失败 (尝试 {attempt + 1}/{self.config.max_retries}): {error_msg}")

                # 处理不同类型的错误
                if "maximum context length" in error_msg:
                    processed_history = processed_history[-50000:]  # 如果还是太长，进一步截断
                    logger.info("检测到上下文过长，进一步截断...")
                elif "400" in error_msg:
                    logger.warning("可能原因: 请求格式错误或内容过长")
                elif "429" in error_msg:
                    logger.warning("可能原因: API调用频率过高")
                    time.sleep(10)

                if attempt < self.config.max_retries - 1:
                    time.sleep(2**attempt)  # 指数退避
                else:
                    return f"FAILED\n无法调用API，上下文可能过长: {error_msg}"


class ReportManager:
    """报告管理器，负责报告的生成和管理"""

    def __init__(self, config: Config):
        self.config = config

    def load_cached_results(self, folder_name: str) -> Dict[str, List[str]]:
        """加载缓存的结果"""
        cached_results = {"passed": [], "failed": []}

        if not os.path.exists(folder_name):
            return cached_results

        report_file = os.path.join(folder_name, "report.json")
        if os.path.exists(report_file):
            try:
                with open(report_file, "r", encoding="utf-8") as file:
                    cached_results = json.load(file)
                    
                # 确保必要的键存在
                for key in ["passed", "failed"]:
                    if key not in cached_results:
                        cached_results[key] = []
                        
            except Exception as e:
                logger.error(f"读取缓存文件出错: {e}")

        return cached_results

    def is_already_evaluated(self, folder_name: str, pr_name: str) -> bool:
        """检查是否已经评估过"""
        txt_file = os.path.join(folder_name, f"{pr_name}.txt")
        return os.path.exists(txt_file)

    def save_result_to_file(self, folder_name: str, pr_name: str, result: str):
        """保存单个结果到文件"""
        with open(os.path.join(folder_name, f"{pr_name}.txt"), "w", encoding="utf-8") as file:
            json.dump(result, file, ensure_ascii=False, indent=4)

    def save_report(self, folder_name: str, check_report: Dict[str, Any]):
        """保存最终报告"""
        check_report["TOTAL_COUNT"] = {
            "passed_count": len(check_report["passed"]),
            "failed_count": len(check_report["failed"]),
            "total_count": len(check_report["passed"]) + len(check_report["failed"]),
        }
        # 对列表进行排序
        check_report["passed"] = sorted(check_report["passed"])
        check_report["failed"] = sorted(check_report["failed"])

        with open(os.path.join(folder_name, "report.json"), "w", encoding="utf-8") as file:
            json.dump(check_report, file, ensure_ascii=False, indent=4)

    def generate_report_json(self, folder_name: str, pr_names: List[str]) -> Dict[str, Any]:
        """生成report.json"""
        logger.info("=== 开始生成report.json ===")

        check_report = {
            "passed": [],
            "failed": [],
            "TOTAL_COUNT": {"passed_count": 0, "failed_count": 0, "total_count": 0},
        }

        with tqdm(pr_names, desc="生成报告", unit="item") as pbar:
            for pr_name in pbar:
                txt_file = os.path.join(folder_name, f"{pr_name}.txt")

                if os.path.exists(txt_file):
                    try:
                        with open(txt_file, "r", encoding="utf-8") as file:
                            result = json.load(file)

                        if result.startswith("PASSED"):
                            check_report["passed"].append(pr_name)
                        else:
                            check_report["failed"].append(pr_name)

                    except Exception as e:
                        check_report["failed"].append(pr_name)
                        pbar.set_postfix({"当前": pr_name, "状态": "读取错误"})
                else:
                    check_report["failed"].append(pr_name)
                    pbar.set_postfix({"当前": pr_name, "状态": "文件缺失"})

        self.save_report(folder_name, check_report)

        # 输出统计信息
        total_count = check_report['TOTAL_COUNT']
        logger.info(f"PASSED: {total_count.get('passed_count', 0)}")
        logger.info(f"FAILED: {total_count.get('failed_count', 0)}")
        logger.info(f"总计: {total_count.get('total_count', 0)}")
        logger.info("=== report.json生成完成 ===")

        return check_report


class EvaluationManager:
    """评估管理器，协调各个组件完成整体评估流程"""

    def __init__(self, config: Config):
        self.config = config
        self.trajectory_processor = TrajectoryProcessor(config)
        self.llm_judge = LLMJudge(config)
        self.report_manager = ReportManager(config)
        self.rule_evaluator = RuleEvaluator(config)

    def rule_evaluation_phase(self, root_dir: str, output_dir: str, pr_names: List[str]) -> List[str]:
        """规则评估阶段，返回需要LLM评估的pr_names"""
        logger.info("=== 开始规则评估阶段 ===")
        
        rule_failed_count = 0
        rule_failed_list = []
        need_llm_evaluation = []
        
        with tqdm(pr_names, desc="规则评估进度", unit="item") as pbar:
            for pr_name in pbar:
                # 如果已经评估过，跳过
                if self.report_manager.is_already_evaluated(output_dir, pr_name):
                    need_llm_evaluation.append(pr_name)
                    continue
                
                try:
                    traj_file = os.path.join(root_dir, pr_name, f"{pr_name}.traj")
                    info = self.trajectory_processor.extract_info(traj_file)
                    
                    rule_result = self.rule_evaluator.evaluate_by_rule(info)
                    
                    if rule_result is not None:
                        # 规则判定为失败，直接保存结果
                        self.report_manager.save_result_to_file(output_dir, pr_name, rule_result)
                        rule_failed_count += 1
                        rule_failed_list.append(pr_name)
                        pbar.set_postfix({"当前": pr_name, "状态": "规则失败"})
                    else:
                        # 需要LLM评估
                        need_llm_evaluation.append(pr_name)
                        pbar.set_postfix({"当前": pr_name, "状态": "需要LLM"})
                        
                except Exception as e:
                    logger.error(f"规则评估 {pr_name} 时发生错误: {e}")
                    need_llm_evaluation.append(pr_name)
                    pbar.set_postfix({"当前": pr_name, "状态": "错误"})
        
        logger.info(f"规则评估完成:")
        logger.info(f"  规则判定失败: {rule_failed_count} 个")
        logger.info(f"  需要LLM评估: {len(need_llm_evaluation)} 个")
        logger.info(f"规则判定失败的项目: {rule_failed_list}")
        logger.info("=== 规则评估阶段完成 ===")
        
        return need_llm_evaluation

    def generate_llm_judge_result(self, root_dir: str, pr_name: str, output_dir: str) -> str:
        """处理单个轨迹文件并生成评估结果"""
        try:
            traj_file = os.path.join(root_dir, pr_name, f"{pr_name}.traj")
            history = self.trajectory_processor.extract_history(traj_file)
            
            if history:
                processed_history = str(history)
                final_status = self.llm_judge.evaluate(processed_history)
                self.report_manager.save_result_to_file(output_dir, pr_name, final_status)
                logger.debug(f"LLM处理完成: {pr_name} - {final_status}")
                return final_status
            else:
                # 没有history时创建失败记录
                result = "FAILED\n未找到history字段"
                self.report_manager.save_result_to_file(output_dir, pr_name, result)
                logger.warning(f"未找到history: {pr_name}")
                return "FAILED"

        except Exception as e:
            # 创建错误记录文件
            result = f"FAILED\n处理错误: {str(e)}"
            self.report_manager.save_result_to_file(output_dir, pr_name, result)
            logger.error(f"错误详情 [{pr_name}]: {str(e)}")
            return "FAILED"

    def generate_txt_files(self, root_dir: str, output_dir: str, pr_names: List[str]):
        """生成txt文件"""
        logger.info("=== 开始生成txt文件 ===")

        # 先进行规则评估
        need_llm_evaluation = self.rule_evaluation_phase(root_dir, output_dir, pr_names)

        # 过滤出真正需要LLM评估的项目（排除已经评估过的）
        pending_items = [
            pr_name for pr_name in need_llm_evaluation 
            if not self.report_manager.is_already_evaluated(output_dir, pr_name)
        ]

        if not pending_items:
            logger.info("没有待处理的LLM评估项目，跳过LLM评估步骤")
            return

        logger.info(f"=== 开始LLM评估阶段 ===")
        logger.info(f"LLM评估项目数: {len(pending_items)}")

        with concurrent.futures.ThreadPoolExecutor(max_workers=self.config.max_workers) as executor:
            futures = {
                executor.submit(self.generate_llm_judge_result, root_dir, pr_name, output_dir): pr_name
                for pr_name in pending_items
            }

            # 使用锁来保证进度条更新的原子性
            import threading
            update_lock = threading.Lock()
            
            # 使用tqdm显示进度
            with tqdm(
                total=len(pending_items), 
                desc="LLM评估进度", 
                unit="item",
                miniters=1,
                mininterval=1.0,  # 增加最小时间间隔到1秒
                leave=True
            ) as pbar:
                completed_count = 0
                for future in concurrent.futures.as_completed(futures):
                    pr_name = futures[future]
                    try:
                        status = future.result()
                        
                        # 使用锁保证更新操作的原子性
                        with update_lock:
                            completed_count += 1
                            # 只在完成任务时更新一次，简化显示内容
                            result_preview = "PASSED" if status.startswith("PASSED") else "FAILED"
                            pbar.set_postfix_str(f"完成: {completed_count}/{len(pending_items)} | 最新: {result_preview}")
                            pbar.update(1)
                            
                    except Exception as e:
                        logger.error(f"处理 {pr_name} 时发生错误: {e}")
                        with update_lock:
                            completed_count += 1
                            pbar.set_postfix_str(f"完成: {completed_count}/{len(pending_items)} | 最新: ERROR")
                            pbar.update(1)

        logger.info("=== LLM评估阶段完成 ===")
        logger.info("=== txt文件生成完成 ===")

    def run_evaluation(self, root_dir: str, raw_dataset_file: str):
        """运行完整的评估流程"""
        output_dir = os.path.join(root_dir, "llm_judge_chw8")
        os.makedirs(output_dir, exist_ok=True)
        
        # 读取数据文件
        with open(raw_dataset_file, "r") as f:
            data = [json.loads(line) for line in f]

        pr_names = [f"{item['org']}__{item['repo']}-{item['number']}" for item in data]

        # 生成txt文件（包含规则评估和LLM评估）
        self.generate_txt_files(root_dir, output_dir, pr_names)

        # 生成报告
        self.report_manager.generate_report_json(output_dir, pr_names)

def main():
    """主函数"""
    # 初始化配置
    config = Config("https://api.deepseek.com", "sk-82d466d373bf4646ae00dce33b846918")
    evaluator = EvaluationManager(config)

    # 获取当前文件夹下所有setup.log文件
    current_dir = os.path.dirname(os.path.abspath(__file__))
    
    # 递归查找所有子目录中的setup.log文件
    log_files = []
    for root, dirs, files in os.walk(current_dir):
        for file in files:
            if file == 'setup.log':
                log_files.append(os.path.relpath(os.path.join(root, file), current_dir))

    if not log_files:
        logger.info("未找到任何setup.log文件")
        return

    logger.info(f"找到 {len(log_files)} 个setup.log文件")

    # 汇总结果文件
    report_path = os.path.join(current_dir, "report.json")
    if os.path.exists(report_path):
        try:
            with open(report_path, "r", encoding="utf-8") as f:
                report_data = json.load(f)
            already_evaluated = set(report_data.get("passed", []) + report_data.get("failed", []))
        except Exception:
            already_evaluated = set()
    else:
        already_evaluated = set()

    results = {"passed": [], "failed": []}

    # 创建保存评估结果的子文件夹
    txt_dir = os.path.join(current_dir, "llm_judge_txt")
    os.makedirs(txt_dir, exist_ok=True)

    with tqdm(log_files, desc="LLM评估进度", unit="file") as pbar:
        for log_file in pbar:
            if log_file in already_evaluated:
                pbar.set_postfix({"当前": log_file, "状态": "已评估"})
                continue
                
            file_path = os.path.join(current_dir, log_file)
            try:
                # 读取文件内容，确保正确处理编码
                with open(file_path, 'r', encoding='utf-8', errors='replace') as f:
                    content = f.read().strip()
                
                # 检查文件是否为空
                if not content:
                    result = "FAILED\nsetup.log文件为空"
                    logger.warning(f"文件为空: {log_file}")
                else:
                    # 如果内容过长，进行截断（保留最后部分，通常更重要）
                    if len(content) > 50000:  
                        content = content[-50000:]
                        logger.info(f"文件内容过长，已截断: {log_file}")
                    
                    result = evaluator.llm_judge.evaluate(content)
                
                print(f"=== {log_file} ===\n{result}\n")
                
                # 保存到txt文件
                txt_file = os.path.join(txt_dir, f"{log_file.replace(os.sep, '_')}.txt")
                with open(txt_file, "w", encoding="utf-8") as tf:
                    tf.write(result)
                
                # 分类结果
                if result.startswith("PASSED"):
                    results["passed"].append(log_file)
                    pbar.set_postfix({"当前": log_file, "状态": "PASSED"})
                else:
                    results["failed"].append(log_file)
                    pbar.set_postfix({"当前": log_file, "状态": "FAILED"})
                    
            except UnicodeDecodeError as e:
                error_msg = f"FAILED\n编码错误，无法读取文件: {e}"
                print(f"=== {log_file} ===\n{error_msg}\n")
                txt_file = os.path.join(txt_dir, f"{log_file.replace(os.sep, '_')}.txt")
                with open(txt_file, "w", encoding="utf-8") as tf:
                    tf.write(error_msg)
                results["failed"].append(log_file)
                pbar.set_postfix({"当前": log_file, "状态": "编码错误"})
                
            except FileNotFoundError as e:
                error_msg = f"FAILED\n文件未找到: {e}"
                print(f"=== {log_file} ===\n{error_msg}\n")
                txt_file = os.path.join(txt_dir, f"{log_file.replace(os.sep, '_')}.txt")
                with open(txt_file, "w", encoding="utf-8") as tf:
                    tf.write(error_msg)
                results["failed"].append(log_file)
                pbar.set_postfix({"当前": log_file, "状态": "文件缺失"})
                
            except Exception as e:
                error_msg = f"FAILED\n读取或评估出错: {e}"
                print(f"=== {log_file} ===\n{error_msg}\n")
                txt_file = os.path.join(txt_dir, f"{log_file.replace(os.sep, '_')}.txt")
                with open(txt_file, "w", encoding="utf-8") as tf:
                    tf.write(error_msg)
                results["failed"].append(log_file)
                pbar.set_postfix({"当前": log_file, "状态": "处理错误"})

    # 合并已评估结果
    if 'report_data' in locals():
        results["passed"] = sorted(list(set(results["passed"]) | set(report_data.get("passed", []))))
        results["failed"] = sorted(list(set(results["failed"]) | set(report_data.get("failed", []))))
    else:
        results["passed"] = sorted(results["passed"])
        results["failed"] = sorted(results["failed"])
        
    results["TOTAL_COUNT"] = {
        "passed_count": len(results["passed"]),
        "failed_count": len(results["failed"]),
        "total_count": len(results["passed"]) + len(results["failed"])
    }
    
    # 保存最终报告
    with open(report_path, "w", encoding="utf-8") as f:
        json.dump(results, f, ensure_ascii=False, indent=4)
    
    # 输出统计信息
    logger.info(f"评估完成 - PASSED: {results['TOTAL_COUNT']['passed_count']}, FAILED: {results['TOTAL_COUNT']['failed_count']}")

if __name__ == "__main__":
    main()