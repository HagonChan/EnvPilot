import argparse
import json
import os
from openai import OpenAI
from typing import List, Dict, Any, Optional, Self
from pathlib import Path
import time
import re
from tqdm import tqdm
import logging
from concurrent.futures import ThreadPoolExecutor, as_completed
from dataclasses import dataclass
from sweagent.utils.log import get_logger

# 配置日志
logger = get_logger("extract knowledge from trajectory")

system_prompt = """
You are an expert in analyzing environment configuration problems, specializing in identifying and analyzing environment-related issues from agent trajectories.

## Objective
Based on the given agent trajectory, use **Chain of Thought** analysis process to accurately identify environment configuration problems and extract structured solutions.

## Analysis Steps
1. **Problem Identification**: Carefully read the trajectory to identify all environment configuration-related failures or errors
2. **Root Cause Analysis**: Deeply analyze the root cause of each problem
3. **Solution Extraction**: Extract actually effective solutions from the trajectory
4. **Structured Output**: Generate standardized triple format

## Key Requirements
- **Generality**: Descriptions should be **repository-agnostic**, focusing on general environment configuration problem types rather than being specific to a particular project
- **Completeness**: Ensure all environment configuration-related problems are identified and recorded
- **Accuracy**: Only record problems that actually occurred in the trajectory and solutions that were truly effective

## Output Format
Return a valid JSON object with the following structure:
{
    "triples": [
        {
            "problem": "Concise problem description (e.g., 'The initial make command failed when building the project')",
            "solution": "Detailed solution explanation including root cause analysis (e.g., 'The make tool was not installed on the Ubuntu system, which is required for building projects using Makefiles. The root cause was a missing build tool package in the environment configuration. The solution was to install make using apt-get install -y make')",
            "action": "The specific command used to solve the problem (e.g., 'apt-get install -y make')"
        }
    ]
}
**IMPORTANT**: Return ONLY valid JSON format, no additional text or explanations.
"""


@dataclass
class AnalysisConfig:
    input_dir: str
    model: str = "deepseek-reasoner"
    base_url: str = "https://api.deepseek.com"
    api_key: str = "sk-your-api-key"
    max_workers: int = 8
    timeout: int = 60
    max_retries: int = 3
    retry_delay: float = 1.0


@dataclass
class ProcessingResult:
    success: bool
    file_path: str
    output_path: Optional[str] = None
    error_message: Optional[str] = None
    processing_time: float = 0.0


class LLMClient:
    def __init__(self, config: AnalysisConfig):
        self.config = config
        self.client = OpenAI(base_url=config.base_url, api_key=config.api_key)

    def analyze_trajectory(self, history_str: str) -> Dict[str, Any]:
        if len(history_str) > 65535:
            history_str = history_str[:65535]

        messages = [{"role": "system", "content": system_prompt}, {"role": "user", "content": history_str}]
        for attempt in range(self.config.max_retries):
            try:
                response = self.client.chat.completions.create(
                    model=self.config.model,
                    messages=messages,
                    response_format={"type": "json_object"},
                    timeout=self.config.timeout,
                )
                response_content = response.choices[0].message.content
                result = self._extract_json_from_response(response_content)
                logger.debug(f"Analysis completed successfully on attempt {attempt + 1}")
                return result

            except Exception as e:
                logger.warning(f"Analysis attempt {attempt + 1} failed: {e}")
                if attempt == self.config.max_retries - 1:
                    logger.error(f"All {self.config.max_retries} attempts failed")
                    raise
                time.sleep(self.config.retry_delay * (2**attempt))  # 指数退避
        return {"triples": []}

    def _extract_json_from_response(self, response_text: str) -> Dict[str, Any]:
        try:
            return json.loads(response_text)
        except json.JSONDecodeError:
            pass

        # 尝试提取JSON代码块
        json_pattern = r"```json\s*(.*?)\s*```"
        match = re.search(json_pattern, response_text, re.DOTALL)
        if match:
            try:
                return json.loads(match.group(1))
            except json.JSONDecodeError:
                pass

        # 尝试提取大括号内的内容
        brace_pattern = r"\{.*\}"
        match = re.search(brace_pattern, response_text, re.DOTALL)
        if match:
            try:
                return json.loads(match.group(0))
            except json.JSONDecodeError:
                pass

        # 如果都失败了，抛出异常
        raise ValueError(f"无法从响应中提取有效的JSON: {response_text[:200]}...")


class TrajectoryAnalyzer:
    def __init__(self, config: AnalysisConfig):
        self.config = config
        self.llm_client = LLMClient(config)
        self.output_dir = os.path.join("data/knowledge", config.input_dir.split("/")[-1])
        # 确保输出目录存在
        os.makedirs(self.output_dir, exist_ok=True)

    def process_trajectory_file(self, instance_id: str) -> ProcessingResult:
        start_time = time.time()
        input_path = os.path.join(self.config.input_dir, instance_id, f"{instance_id}.traj")
        output_path = os.path.join(self.output_dir, f"{instance_id}.json")

        # 跳过已存在的输出文件
        if os.path.exists(output_path):
            logger.info(f"Output file already exists, skipping: {output_path}")
            return ProcessingResult(success=True, file_path=input_path, output_path=output_path, processing_time=0.0)

        try:
            # logger.info(f"Processing file: {input_path}")
            with open(input_path, "r", encoding="utf-8") as f:
                data = json.load(f)
            history_str = str(data.get("history", data.get("trajectory", data)))
            result = self.llm_client.analyze_trajectory(history_str)

            with open(output_path, "w", encoding="utf-8") as f:
                json.dump(result, f, indent=4, ensure_ascii=False)

            processing_time = time.time() - start_time
            logger.info(f"Successfully processed: {input_path} -> {output_path} (Time: {processing_time:.2f}s)")

            return ProcessingResult(
                success=True, file_path=input_path, output_path=output_path, processing_time=processing_time
            )

        except Exception as e:
            processing_time = time.time() - start_time
            logger.error(f"Error processing file {input_path}: {e}")

            return ProcessingResult(
                success=False, file_path=input_path, error_message=str(e), processing_time=processing_time
            )

    def analyze_directory(self) -> List[ProcessingResult]:
        traj_files = []
        for root, dirs, files in os.walk(self.config.input_dir):
            for file in files:
                if file.endswith(".traj"):
                    traj_files.append(os.path.join(root, file))
        if not traj_files:
            logger.warning(f"No .traj files found in directory {self.config.input_dir}")
            return []

        logger.info(f"Found {len(traj_files)} trajectory files, starting processing...")

        results = []

        with ThreadPoolExecutor(max_workers=self.config.max_workers) as executor:
            future_to_file = {
                executor.submit(self.process_trajectory_file, traj_file.split("/")[-1].replace(".traj", "")): traj_file
                for traj_file in traj_files
            }

            with tqdm(total=len(traj_files), desc="Processing trajectory files") as pbar:
                for future in as_completed(future_to_file):
                    result = future.result()
                    results.append(result)
                    pbar.update(1)

        return results

    def print_summary(self, results: List[ProcessingResult]):
        if not results:
            logger.info("No files processed")
            return

        success_count = sum(1 for r in results if r.success)
        fail_count = len(results) - success_count
        total_time = sum(r.processing_time for r in results)
        avg_time = total_time / len(results) if results else 0

        logger.info(
            f"""
        ========== Processing Summary ==========
        Total files: {len(results)}
        Success: {success_count}
        Failed: {fail_count}
        Total time: {total_time:.2f}s
        Average time: {avg_time:.2f}s/file
        Success rate: {success_count/len(results)*100:.1f}%
        ========================================
        """
        )

        if fail_count > 0:
            logger.error("Failed files:")
            for result in results:
                if not result.success:
                    logger.error(f"  - {result.file_path}: {result.error_message}")


def main(args):
    config = AnalysisConfig(
        input_dir=args.input_dir,
        model=args.model,
        base_url=args.base_url,
        api_key=args.api_key,
        max_workers=args.max_workers,
        timeout=args.timeout,
        max_retries=args.max_retries,
    )
    analyzer = TrajectoryAnalyzer(config)

    # 检查输入目录是否存在
    if not os.path.exists(config.input_dir):
        logger.error(f"Input directory does not exist: {config.input_dir}")
        return

    results = analyzer.analyze_directory()
    analyzer.print_summary(results)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Trajectory analysis tool")
    parser.add_argument(
        "--input_dir",
        type=str,
        default="trajectories_PrepareScript/deepseek-r1_2025-06-06",
        help="Input directory path",
    )
    parser.add_argument("--base_url", type=str, default="https://api.deepseek.com", help="API base URL")
    parser.add_argument("--api_key", type=str, default="sk-82d466d373bf4646ae00dce33b846918", help="API key")
    parser.add_argument("--model", type=str, default="deepseek-reasoner", help="Model to use")
    parser.add_argument("--max_workers", type=int, default=8, help="Maximum number of concurrent threads")
    parser.add_argument("--timeout", type=int, default=60, help="API request timeout (seconds)")
    parser.add_argument("--max_retries", type=int, default=3, help="Maximum number of retries")

    args = parser.parse_args()
    main(args)
