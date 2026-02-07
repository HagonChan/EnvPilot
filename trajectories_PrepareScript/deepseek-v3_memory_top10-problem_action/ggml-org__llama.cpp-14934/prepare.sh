ls -la
find_file '*.yml' .github/workflows
open ".github/workflows/build.yml"
open "README.md"
open "CMakeLists.txt"
apt-get update && apt-get install -y build-essential tcl libcurl4-openssl-dev mesa-vulkan-drivers vulkan-sdk rocblas-dev hipblas-dev libssl-dev
apt-get install -y build-essential tcl libcurl4-openssl-dev mesa-vulkan-drivers libssl-dev
cmake -B build -DLLAMA_BUILD_TESTS=ON -DLLAMA_CURL=ON
apt-get install -y cmake ninja-build
cmake -B build -DLLAMA_BUILD_TESTS=ON -DLLAMA_CURL=ON
cmake --build build
cd build && ctest
ctest --rerun-failed --output-on-failure
ls -la /testbed/models/ggml-vocabs/
