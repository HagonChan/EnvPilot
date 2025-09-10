ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
goto 200
apt-get update && apt-get install -y build-essential libcurl4-openssl-dev
cmake -B build -DLLAMA_FATAL_WARNINGS=ON -DGGML_RPC=ON
apt-get install -y cmake ninja-build
cmake -B build -DLLAMA_FATAL_WARNINGS=ON -DGGML_RPC=ON
cmake --build build --config Release -j $(nproc)
cd build && ctest --output-on-failure
