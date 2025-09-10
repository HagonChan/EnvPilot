# please download model wieghts first using script below:
# huggingface-cli download Qwen/Qwen3-Embedding-0.6B --cache-dir /path/to/cache
# then replace the volume path with the path to the cache

embed_model_name=Qwen/Qwen3-Embedding-8B
volume=/home/lhy/models/cache

docker run --gpus all \
    -p 8080:80 \
    -e http_proxy=http://172.31.233.4:7890 \
    -e https_proxy=http://172.31.233.4:7890 \
    -v $volume:/data \
    --pull always ghcr.io/huggingface/text-embeddings-inference:1.7 \
    --model-id $embed_model_name
