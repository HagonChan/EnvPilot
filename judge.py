from sweagent.run.hooks.LLM_judge3_2 import Config, EvaluationManager
import os


def main():
    """主函数"""
    # 初始化配置
    config = Config("https://api.deepseek.com", os.environ["DEEPSEEK_API_KEY"], model="deepseek-chat")

    # 创建评估管理器
    evaluator = EvaluationManager(config)

    # 运行评估
    # root_dir = "trajectories_PrepareScript/deepseek-v3_baseline"
    root_dir = "trajectories_PrepareScript/deepseek-v3_memory_top15"
    # root_dir = "trajectories_PrepareScript/deepseek-v3_unstructured_memory_top10"
    data_file = "data/stage3_2_new_simplified.jsonl"

    evaluator.run_evaluation(root_dir, data_file)


if __name__ == "__main__":
    main()
