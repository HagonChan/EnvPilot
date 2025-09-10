ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/build.yml"
search_file ubuntu .github/workflows/build.yml
goto 201
apt-get update && apt-get install -y build-essential libcurl4-openssl-dev
cmake -B build -DLLAMA_FATAL_WARNINGS=ON -DGGML_RPC=ON && cmake --build build --config Release -j $(nproc)
apt-get install -y cmake
cmake -B build -DLLAMA_FATAL_WARNINGS=ON -DGGML_RPC=ON && cmake --build build --config Release -j $(nproc)
cd build && ctest -L 'main|curl' --verbose --timeout 900
