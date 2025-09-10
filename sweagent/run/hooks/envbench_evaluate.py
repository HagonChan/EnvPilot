from pathlib import Path
from sweagent.run.hooks.abstract import RunHook
from sweagent.run.batch_instances import BatchInstance
from sweagent.types import AgentRunResult
from sweagent.utils.log import get_logger


class EnvBenchEvaluate(RunHook):
    def __init__(self, instances: list[BatchInstance], instances_path: str, output_dir: Path) -> None:
        super().__init__()
        self.output_dir = output_dir
        self.instances = instances
        self.logger = get_logger("envbench-evaluate", emoji="😬")
        self.instances_path = instances_path

    def on_instance_completed(self, *args, result: AgentRunResult):
        pass

    def on_end(self) -> None:
        from sweagent.run.hooks.LLM_judge3_2 import EvaluationManager, Config

        # self.logger.info(f"Evaluating EnvBench instances from {self.instances_path} with LLM Judge.")
        config = Config(
            api_base="https://api.deepseek.com/", api_key="sk-82d466d373bf4646ae00dce33b846918", model="deepseek-chat"
        )
        evaluator = EvaluationManager(config)
        evaluator.run_evaluation(self.output_dir, self.instances_path)
