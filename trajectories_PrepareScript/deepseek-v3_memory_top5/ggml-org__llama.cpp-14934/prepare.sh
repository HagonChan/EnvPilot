ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y build-essential tcl libcurl4-openssl-dev mesa-vulkan-drivers vulkan-sdk rocblas-dev hipblas-dev libcurl-devel gcc g++ libssl-dev
open "README.md"
open "docs/build.md"
cmake -B build -G Ninja
apt-get install -y cmake ninja-build
cmake -B build -G Ninja
apt-get install -y g++
cmake -B build -G Ninja
apt-get install -y libcurl4-openssl-dev
cmake -B build -G Ninja
ninja -C build
ctest --test-dir build
cat /testbed/build/Testing/Temporary/LastTest.log
ctest --test-dir build --rerun-failed --output-on-failure
ls -la /testbed/models/ggml-vocabs/
ls -la /testbed/models/ggml-vocabs/PLaMo2/
