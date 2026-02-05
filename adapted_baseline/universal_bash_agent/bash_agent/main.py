"""主入口 - 处理 JSONL 输入并运行 Agent"""

import argparse
import asyncio
import json
import logging
import os
import sys
from datetime import datetime
from pathlib import Path
from typing import List, Optional

from langchain_openai import ChatOpenAI

from .config import AgentConfig
from .repo_cloner import GitRepoCloner
from .executor import DockerBashExecutor
from .agent import SetupAgent


class LazyFileHandler(logging.FileHandler):
    """延迟创建文件的 FileHandler，只在首次写入时创建目录和文件"""
    
    def __init__(self, filename, mode='a', encoding=None, delay=True):
        """使用 delay=True 来延迟文件创建"""
        self.baseFilename = str(filename)
        self.mode = mode
        self.encoding = encoding
        self.delay = delay
        if delay:
            logging.Handler.__init__(self)
            self.stream = None
        else:
            Path(filename).parent.mkdir(parents=True, exist_ok=True)
            logging.FileHandler.__init__(self, filename, mode, encoding, delay=False)
    
    def _open(self):
        """在打开文件前确保目录存在"""
        Path(self.baseFilename).parent.mkdir(parents=True, exist_ok=True)
        return open(self.baseFilename, self.mode, encoding=self.encoding)


def setup_logging(log_file: Optional[str] = None):
    """配置全局日志"""
    handlers = [logging.StreamHandler()]
    if log_file:
        Path(log_file).parent.mkdir(parents=True, exist_ok=True)
        handlers.append(logging.FileHandler(log_file))
    
    logging.basicConfig(
        level=logging.INFO,
        format="%(asctime)s - %(levelname)s - %(message)s",
        handlers=handlers,
    )


def create_task_logger(task_id: str, output_dir: str) -> logging.Logger:
    """为每个任务创建独立的 logger"""
    logger = logging.getLogger(f"task.{task_id}")
    logger.setLevel(logging.INFO)
    logger.propagate = False  # 不传播到根 logger，避免重复输出
    
    # 清除已有 handlers
    logger.handlers.clear()
    
    # 控制台 handler，带任务前缀
    console_handler = logging.StreamHandler(sys.stdout)
    console_handler.setLevel(logging.INFO)
    console_formatter = logging.Formatter(f"%(asctime)s - [{task_id}] %(message)s")
    console_handler.setFormatter(console_formatter)
    logger.addHandler(console_handler)
    
    # 文件 handler 将在首次写入日志时才创建文件夹和文件
    # 使用延迟创建的自定义 handler
    log_path = Path(output_dir) / f"{task_id}" / "agent.log"
    file_handler = LazyFileHandler(log_path)
    file_handler.setLevel(logging.INFO)
    file_formatter = logging.Formatter("%(asctime)s - %(levelname)s - %(message)s")
    file_handler.setFormatter(file_formatter)
    logger.addHandler(file_handler)
    
    return logger


def parse_jsonl(file_path: str) -> List[dict]:
    """解析 JSONL 文件"""
    items = []
    with open(file_path, "r") as f:
        for line in f:
            line = line.strip()
            if line:
                items.append(json.loads(line))
    return items


def write_setup_log(output_dir: str, org: str, repo: str, commit: str, number: Optional[int], commands: List[dict]):
    """写入 setup.log"""
    folder_name = f"{org}__{repo}@{number}" if number is not None else f"{org}__{repo}@{commit[:8]}"
    log_path = Path(output_dir) / folder_name / "setup.log"
    log_path.parent.mkdir(parents=True, exist_ok=True)
    
    with open(log_path, "w") as f:
        f.write(f"# Setup Log for {org}/{repo}@{commit}\n")
        if number is not None:
            f.write(f"# Issue/PR Number: {number}\n")
        f.write(f"# Generated at: {datetime.now().isoformat()}\n")
        f.write("=" * 80 + "\n\n")
        
        for i, cmd in enumerate(commands, 1):
            f.write(f"[Command {i}]\n")
            f.write(f"$ {cmd['command']}\n")
            f.write(f"Exit Code: {cmd['exit_code']}\n")
            f.write(f"Output:\n{cmd['output']}\n")
            f.write("-" * 40 + "\n\n")
    
    return str(log_path)


async def run_setup(
    org: str,
    repo: str,
    commit: str,
    config: AgentConfig,
    number: Optional[int] = None,
    task_logger: Optional[logging.Logger] = None,
) -> dict:
    """运行单个仓库的环境配置"""
    repo_name = f"{org}/{repo}"
    log = task_logger or logging.getLogger(__name__)
    
    log.info(f"Processing: {repo_name}@{commit}")
    
    result = {
        "org": org,
        "repo": repo,
        "commit": commit,
        "number": number,
        "success": False,
        "commands_count": 0,
        "log_path": None,
        "error": None,
    }
    
    cloner = GitRepoCloner(output_dir=config.repos_dir)
    executor = None
    
    try:
        # 1. 克隆仓库
        log.info(f"Cloning {repo_name}...")
        local_path = cloner.clone_and_checkout(org, repo, commit)
        
        # 2. 创建 Docker 执行器
        log.info(f"Starting Docker container...")
        executor = await DockerBashExecutor.create(
            image=config.docker_image,
            local_repo_path=local_path,
            bash_timeout=config.bash_timeout,
            max_output_chars=config.max_output_chars,
        )
        
        # 3. 创建 Agent
        model = ChatOpenAI(
            model=config.model_name,
            temperature=config.temperature,
            api_key=config.api_key,
            base_url=config.base_url,
        )
        agent = SetupAgent(
            model=model,
            executor=executor,
            max_iterations=config.max_iterations,
            logger=log,
        )
        
        # 4. 运行 Agent
        log.info(f"Running agent...")
        await agent.run()
        
        # 5. 保存日志
        log_path = write_setup_log(
            config.output_dir,
            org, repo, commit, number,
            agent.commands_history,
        )
        
        result["success"] = True
        result["commands_count"] = len(agent.commands_history)
        result["log_path"] = log_path
        log.info(f"✓ Completed: {repo_name}, {len(agent.commands_history)} commands")
        
    except Exception as e:
        log.error(f"✗ Failed: {repo_name}: {e}")
        result["error"] = str(e)
        
    finally:
        if executor:
            await executor.cleanup()
    
    return result


async def run_single_task(
    item: dict,
    config: AgentConfig,
    semaphore: asyncio.Semaphore,
    task_index: int,
    total_tasks: int,
) -> dict:
    """运行单个任务（带并发控制）"""
    number = item.get('number')
    task_id = f"{item['org']}__{item['repo']}@{number}" if number is not None else f"{item['org']}__{item['repo']}@{item['commit'][:8]}"
    task_logger = create_task_logger(task_id, config.output_dir)
    
    async with semaphore:
        task_logger.info(f"Starting task [{task_index}/{total_tasks}]")
        result = await run_setup(
            org=item["org"],
            repo=item["repo"],
            commit=item["commit"],
            number=item.get("number"),
            config=config,
            task_logger=task_logger,
        )
        task_logger.info(f"Task completed: {'SUCCESS' if result['success'] else 'FAILED'}")
        return result


async def run_batch_setup(input_file: str, config: AgentConfig, concurrency: int = 1) -> List[dict]:
    """批量处理 JSONL 文件中的所有仓库"""
    items = parse_jsonl(input_file)
    logging.info(f"Loaded {len(items)} repositories from {input_file}")
    logging.info(f"Running with concurrency: {concurrency}")
    
    semaphore = asyncio.Semaphore(concurrency)
    
    # 创建所有任务
    tasks = [
        run_single_task(item, config, semaphore, i, len(items))
        for i, item in enumerate(items, 1)
    ]
    
    # 并发执行
    results = await asyncio.gather(*tasks, return_exceptions=True)
    
    # 处理异常结果
    processed_results = []
    for i, result in enumerate(results):
        if isinstance(result, Exception):
            item = items[i]
            processed_results.append({
                "org": item["org"],
                "repo": item["repo"],
                "commit": item["commit"],
                "number": item.get("number"),
                "success": False,
                "commands_count": 0,
                "log_path": None,
                "error": str(result),
            })
        else:
            processed_results.append(result)
    
    # 保存结果摘要
    summary_path = Path(config.output_dir) / "results.jsonl"
    with open(summary_path, "w") as f:
        for r in processed_results:
            f.write(json.dumps(r) + "\n")
    
    # 打印统计
    success = sum(1 for r in processed_results if r["success"])
    logging.info(f"\n{'='*60}")
    logging.info(f"Completed: {success}/{len(processed_results)} succeeded")
    logging.info(f"Results saved to: {summary_path}")
    
    return processed_results


def main():
    """命令行入口"""
    parser = argparse.ArgumentParser(description="Universal Setup Agent")
    parser.add_argument("input", help="Input JSONL file")
    parser.add_argument("--output", "-o", default="./output", help="Output directory")
    parser.add_argument("--repos-dir", default="./repos", help="Repository cache directory")
    parser.add_argument("--image", default="ubuntu:22.04", help="Docker image")
    parser.add_argument("--max-iterations", type=int, default=50, help="Max agent iterations")
    parser.add_argument("--bash-timeout", type=int, default=300, help="Bash command timeout")
    parser.add_argument("--concurrency", "-c", type=int, default=1, help="Number of concurrent tasks")
    
    args = parser.parse_args()
    
    config = AgentConfig(
        docker_image=args.image,
        max_iterations=args.max_iterations,
        bash_timeout=args.bash_timeout,
        output_dir=args.output,
        repos_dir=args.repos_dir,
    )
    
    # 配置全局日志
    setup_logging(os.path.join(args.output, "agent.log"))
    
    # 运行
    asyncio.run(run_batch_setup(args.input, config, concurrency=args.concurrency))


if __name__ == "__main__":
    main()
