docker ps -a -q --filter "name=^/mswebench_env" | xargs docker rm -f
