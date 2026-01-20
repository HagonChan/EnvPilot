import os
import json
import time
from openai import OpenAI
from tqdm import tqdm
from typing import List, Dict, Any, Optional
import concurrent.futures
from sweagent.utils.log import get_logger

logger = get_logger("LLM-as-Judge", emoji="👨‍⚖️")


class Config:
    """配置类，管理所有配置信息"""

    def __init__(
        self,
        api_base: str = "https://api.deepseek.com",
        api_key: str = os.environ["DEEPSEEK_API_KEY"] if os.environ.get("DEEPSEEK_API_KEY") else "null",
        model: str = "deepseek-chat",
        max_retries: int = 3,
        max_workers: int = 8,
        temperature: float = 0.0,
    ):
        self.api_key = api_key
        self.api_base = api_base
        self.model = model
        self.max_retries = max_retries
        self.max_workers = max_workers
        self.temperature = temperature
        self.prompt = """
# Agent Environment Configuration Evaluation Task

## Role Definition
You are an expert Software Quality Assurance (QA) Judge. Your task is to evaluate whether an automated agent has successfully configured a software repository environment. Core Principle: You are judging the integrity of the environment, not the correctness of the code logic. The Test Lifecycle Completeness itself is the ultimate validater of the environment. Whether the test passes or fails reflects the correctness of the code logic.

## Key Definitions (Crucial)
Before evaluating, distinguish between these status types:
- FAILED (Assertion Failure): The test ran, but the result did not match the expectation (e.g., assert 1 == 2). This is ACCEPTABLE.
- ERROR (Runtime/Environment Error): The test could not run due to missing dependencies, syntax errors, or environment issues (e.g., ImportError, ModuleNotFound, ConnectionRefused caused by config). This is UNACCEPTABLE.
- CRASH (Process Abort): The test runner stopped unexpectedly (e.g., Segmentation Fault, process killed) before generating a final report. This is UNACCEPTABLE.

## Success Criteria (PASSED)
The environment configuration is PASSED if and only if the following logical flow is satisfied:

1. Compilation/Build Phase (If Applicable)
- Requirement: The core source code must compile.
- Special Logic for "Build + Test" Commands:
  - If the build command (e.g., mvn install, ./gradlew build) runs tests automatically and fails only because of Assertion Failures, but the compilation phase passed and a test report was generated, this counts as SUCCESS.
  - If the build fails due to compilation errors or missing dependencies, it is FAILED.

2. Test Execution Phase (Mandatory)
- Requirement: The test suite MUST attempt to run. If no tests are executed, it is FAILED.
- Stability: The testing process must complete a full lifecycle without crashing.
- Report Integrity: A valid final test report or summary line must be generated (e.g., "5 passed, 2 failed, 0 errors").

3. Final Verification (The "Golden Rule")
The configuration is successful if the logs show:
- Full Lifecycle: The test runner started and finished.
- Zero Errors: The test report shows 0 Errors.
- Allowed Failures: The test report can show > 0 Failures (Assertion faults).
- Report Generated: A summary confirms the test run is complete.

## Failure Scenarios (Critical)
The result is **FAILED** if ANY of the following occur:
1. **No Tests Run:** The agent set up the environment but never executed the test command.
2. **Process Crash:** The test command exited abruptly without producing a final summary/report.
3. **Environment/Runtime Errors:** The output contains `Error` status for tests (indicating environment issues rather than logic bugs) or tracebacks indicating missing modules/libraries.
4. **Compilation Error:** The actual code compilation failed (syntax errors, missing headers), distinct from test assertion failures.
5. **Incomplete Test Report:** The logs end mid-test without a final tally.
6. **Tests Not Found:** Since the target repository contains tests, if no tests are found and therefore the tests are not executed, it is also considered a failure.

## Evaluation Logic
1. **Did the agent run a test command?**
   - NO -> **FAILED**.
2. **Did the build/test process crash or hang?**
   - YES -> **FAILED**.
3. **Did the process output a complete test report/summary?**
   - NO -> **FAILED**.
4. **Analyze the Report/Output:**
   - Are there `Errors` (Runtime/Env issues)? -> **FAILED**.
   - Are there `Failures` (Assertions)? -> **PASSED** (Environment is fine, code is just buggy).
   - Is the exit code non-zero purely due to `Failures`? -> **PASSED**.

## Task Requirements
Based on the agent output trajectory I provide, judge whether the environment configuration meets the success criteria above.

Pay attention to the log of the last executed test or compilation command in the trajectory, and don't be distracted by the previous agent trial and error information (because the agent may have been configured incorrectly before finally being configured successfully).

## Output Format
1. First line: PASSED or FAILED (direct output, no other text)
2. Following lines: Detailed reasoning explaining your judgment based on the two criteria above
"""


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
        total_count = check_report["TOTAL_COUNT"]
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
                # result = "FAILED\n未找到history字段"
                # self.report_manager.save_result_to_file(output_dir, pr_name, result)
                logger.warning(f"未找到history: {pr_name}")
                return "FAILED"

        except Exception as e:
            # 创建错误记录文件
            result = f"FAILED\n处理错误: {str(e)}"
            # self.report_manager.save_result_to_file(output_dir, pr_name, result)
            logger.error(f"错误详情 [{pr_name}]: {str(e)}")
            return "FAILED"

    def generate_txt_files(self, root_dir: str, output_dir: str, pr_names: List[str]):
        """生成txt文件"""
        logger.info("=== 开始生成txt文件 ===")

        # 过滤出真正需要评估的项目（排除已经评估过的）
        pending_items = [
            pr_name for pr_name in pr_names if not self.report_manager.is_already_evaluated(output_dir, pr_name)
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
                leave=True,
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
                            pbar.set_postfix_str(
                                f"完成: {completed_count}/{len(pending_items)} | 最新: {result_preview}"
                            )
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
        output_dir = os.path.join(root_dir, "llm_judge")
        os.makedirs(output_dir, exist_ok=True)

        # 读取数据文件
        with open(raw_dataset_file, "r") as f:
            data = [json.loads(line) for line in f]

        pr_names = [f"{item['org']}__{item['repo']}-{item['number']}" for item in data]

        # 生成txt文件
        self.generate_txt_files(root_dir, output_dir, pr_names)

        # 生成报告
        self.report_manager.generate_report_json(output_dir, pr_names)
