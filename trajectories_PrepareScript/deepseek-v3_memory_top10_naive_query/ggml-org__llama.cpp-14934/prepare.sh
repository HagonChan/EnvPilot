ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
search_file ubuntu .github/workflows/build.yml
goto 201
sudo apt-get update && sudo apt-get install -y build-essential libcurl4-openssl-dev
apt-get update && apt-get install -y build-essential libcurl4-openssl-dev
cmake -B build -DLLAMA_FATAL_WARNINGS=ON -DGGML_RPC=ON && cmake --build build --config Release -j $(nproc)
apt-get install -y cmake ninja-build
cmake -B build -DLLAMA_FATAL_WARNINGS=ON -DGGML_RPC=ON && cmake --build build --config Release -j $(nproc)
ctest -L 'main|curl' --verbose --timeout 900
open "DartConfiguration.tcl"
ls -la build/bin
./build/bin/test-backend-ops
./build/bin/test-chat
