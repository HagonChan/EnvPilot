import subprocess
import sys
from pathlib import Path
from threading import Lock
from time import time
import asyncio

from sweagent.run.hooks.abstract import RunHook
from sweagent.run.batch_instances import BatchInstance

from sweagent.types import AgentRunResult
from sweagent.utils.log import get_logger


class LogParseEvaluate(RunHook):
    def __init__(self, instances: list[BatchInstance], instances_path: str, output_dir: Path) -> None:
        super().__init__()
        self.output_dir = output_dir
        self.instances = instances
        self.logger = get_logger("logparse-evaluate", emoji="📝")
        self.instances_path = instances_path

    def on_instance_completed(self, *args, result: AgentRunResult):
        pass

    def on_end(self) -> None:
        from multi_swe_bench.harness.build_dataset import CliArgs

        params_d = {
            "mode": "dataset",
            "workdir": self.output_dir / "eval" / "workdir",
            "raw_dataset_files": [self.instances_path],
            "force_build": True,
            "output_dir": self.output_dir / "eval" / "dataset",
            "max_workers": 2,
            "max_workers_build_image": 24,
            "max_workers_run_instance": 8,
            "repo_dir": self.output_dir / "eval" / "repos",
            "log_dir": self.output_dir / "eval" / "logs",
            "specifics": [],
            "skips": [],
            "need_clone": True,
            "global_env": [],
            "clear_env": True,
            "stop_on_error": False,
            "run_cmd": "",
            "test_patch_run_cmd": "",
            "fix_patch_run_cmd": "",
            "log_level": "DEBUG",
            "log_to_console": True,
        }

        cli = CliArgs.from_dict(params_d)
        cli.run()
