model=$1
num_workers=8
current_date=$(date +"%Y-%m-%d")
instance_path="data/test_data.jsonl"
embed_topk=10
use_memory=True
save_name="deepseek-v3_memory_top${embed_topk}"
embedding_model_name="huggingface/Qwen/Qwen3-Embedding-0.6B"
embedding_api_base="http://127.0.0.1:8080"
embedding_dimensions=4096

if [ "$model" = "deepseek-r1" ]; then
    model_name="deepseek/deepseek-reasoner"
    api_key="sk-82d466d373bf4646ae00dce33b846918"
    api_base="https://api.deepseek.com/v1"
elif [ "$model" = "deepseek-v3" ]; then
    model_name="deepseek/deepseek-chat"
    api_key="sk-82d466d373bf4646ae00dce33b846918"
    api_base="https://ark.cn-beijing.volces.com/api/v3"
elif [ "$model" = "debug" ]; then
    model_name="deepseek/deepseek-chat"
    api_key="sk-82d466d373bf4646ae00dce33b846918"
    api_base="https://ark.cn-beijing.volces.com/api/v3"
    num_workers=1
else
    echo "Invalid model"
fi

echo "Running step3_2"
sweagent run-batch \
    --config config/default_from_url_env_task_v2.yaml \
    --agent.topk=$embed_topk \
    --agent.model.name=$model_name \
    --agent.use_memory=$use_memory \
    --agent.model.api_key=$api_key \
    --agent.model.api_base=$api_base \
    --agent.model.api_version=2024-03-01-preview \
    --agent.model.total_api_calls_limit=50 \
    --agent.embedding_model.name=$embedding_model_name \
    --agent.embedding_model.api_base=$embedding_api_base \
    --agent.embedding_model.embedding_dimensions=$embedding_dimensions \
    --instances.type file \
    --instances.path $instance_path \
    --instances.deployment.docker_args='["-e", "http_proxy=http://172.31.233.4:7890", "-e", "https_proxy=http://172.31.233.4:7890", "-e", "no_proxy=localhost,127.0.0.1"]' \
    --instances.shuffle=False \
    --redo_existing=False \
    --output_dir=trajectories_PrepareScript/$save_name \
    --progress_bar=True \
    --num_workers=$num_workers \
    --mode run_and_eval \
    --stage step3_2
