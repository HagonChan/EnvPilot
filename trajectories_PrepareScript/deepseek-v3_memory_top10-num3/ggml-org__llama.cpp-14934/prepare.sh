ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/build.yml"
open "README.md"
apt-get update && apt-get install -y build-essential cmake ninja-build tcl libcurl4-openssl-dev mesa-vulkan-drivers vulkan-sdk rocblas-dev hipblas-dev libcurl-devel gcc g++ libssl-dev
open "CMakeLists.txt"
cmake -B build -G Ninja -DLLAMA_BUILD_TESTS=ON
which cmake
apt-get install -y cmake
cmake -B build -G Ninja -DLLAMA_BUILD_TESTS=ON
apt-get install -y ninja-build
cmake -B build -G Ninja -DLLAMA_BUILD_TESTS=ON
which g++
apt-get install -y g++
cmake -B build -G Ninja -DLLAMA_BUILD_TESTS=ON
apt-get install -y libcurl4-openssl-dev
cmake -B build -G Ninja -DLLAMA_BUILD_TESTS=ON
ninja -C build
ctest --test-dir build --output-on-failure
