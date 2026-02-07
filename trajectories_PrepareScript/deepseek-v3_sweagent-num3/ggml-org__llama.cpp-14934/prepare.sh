ls -la
find_file '*.yml' .github/workflows
open ".github/workflows/build.yml"
goto 200
open "requirements.txt"
open "pyproject.toml"
sudo apt-get update && sudo apt-get install -y build-essential libcurl4-openssl-dev
apt-get update && apt-get install -y build-essential libcurl4-openssl-dev
cmake -B build -DLLAMA_FATAL_WARNINGS=ON -DGGML_RPC=ON
apt-get install -y cmake
cmake -B build -DLLAMA_FATAL_WARNINGS=ON -DGGML_RPC=ON
cmake --build build --config Release
cd build && ctest --output-on-failure
cd build && ctest --output-on-failure -R "test-thread-safety|test-arg-parser|test-eval-callback"
ctest --output-on-failure -R "test-thread-safety|test-arg-parser|test-eval-callback"
ctest --output-on-failure -R "test-thread-safety|test-arg-parser|test-eval-callback"
