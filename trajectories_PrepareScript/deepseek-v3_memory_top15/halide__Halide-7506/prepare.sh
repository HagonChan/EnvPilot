ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
apt-get update && apt-get install -y llvm-14 clang-14 liblld-14-dev libclang-14-dev clang-tidy-14 ninja-build cmake python3 build-essential
clang-14 --version && cmake --version && ninja --version
find_file README.md
open "README.md"
mkdir -p build && cd build && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ..
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DHalide_SHARED_LLVM=YES ..
apt-get install -y python3-dev
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DHalide_SHARED_LLVM=YES ..
ninja
ctest --output-on-failure
