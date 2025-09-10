ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
open "README.md"
open "CMakeLists.txt"
apt-get update && apt-get install -y build-essential cmake ninja-build llvm-14 clang-14 liblld-14-dev libclang-14-dev clang-tidy-14 libpng-dev libjpeg-turbo-dev
apt-get update && apt-get install -y build-essential cmake ninja-build llvm-14 clang-14 liblld-14-dev libclang-14-dev clang-tidy-14 libpng-dev libjpeg-dev
mkdir -p build && cd build && cmake -G Ninja ..
cmake -G Ninja -DHalide_SHARED_LLVM=YES ..
apt-get install -y python3-dev
cmake -G Ninja -DHalide_SHARED_LLVM=YES ..
ninja
ctest
