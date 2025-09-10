ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
open "README.md"
open "CMakeLists.txt"
ls -la dependencies
open "dependencies/llvm/CMakeLists.txt"
apt-get update && apt-get install -y build-essential cmake ninja-build clang-14 llvm-14-dev liblld-14-dev libclang-14-dev clang-tidy-14 python3 libpng-dev libjpeg-turbo8-dev
export LLVM_CONFIG=/usr/bin/llvm-config-14
mkdir -p build && cd build
cmake -G Ninja ..
cmake -G Ninja -DHalide_SHARED_LLVM=YES ..
apt-get install -y python3-dev
cmake -G Ninja -DHalide_SHARED_LLVM=YES ..
ninja
ctest
