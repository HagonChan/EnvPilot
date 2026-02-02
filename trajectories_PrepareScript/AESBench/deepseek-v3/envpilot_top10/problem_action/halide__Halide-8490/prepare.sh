ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
open "README.md"
goto 28
search_file 'Building Halide'
goto 115
apt-get update && apt-get install -y clang cmake make llvm lld clang-tools-extra compiler-rt gcc g++ python3 python3-dev git build-essential libc++-dev libstdc++-dev
apt-get update && apt-get install -y clang cmake make llvm lld gcc g++ python3 python3-dev git build-essential libc++-dev libstdc++-12-dev
clang --version && cmake --version && llvm-config --version
apt-get remove -y llvm-14 llvm-14-dev clang-14 && apt-get install -y llvm-17 llvm-17-dev clang-17
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && echo "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-17 main" >> /etc/apt/sources.list && apt-get update && apt-get install -y llvm-17 llvm-17-dev clang-17
apt-get install -y wget && wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && echo "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-17 main" >> /etc/apt/sources.list && apt-get update && apt-get install -y llvm-17 llvm-17-dev clang-17
clang-17 --version && cmake --version && llvm-config-17 --version
ls -la
mkdir -p build && cd build && cmake -DLLVM_DIR=/usr/lib/llvm-17/cmake ..
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ jammy main" | tee /etc/apt/sources.list.d/kitware.list >/dev/null && apt-get update && apt-get install -y cmake
cmake --version
cmake -DLLVM_DIR=/usr/lib/llvm-17/cmake ..
apt-get remove -y llvm-17 llvm-17-dev clang-17 && apt-get install -y llvm-17 llvm-17-dev clang-17 lld-17 libclang-17-dev
ls -la /usr/lib/llvm-17/lib/libclangBasic.a
cmake -DLLVM_DIR=/usr/lib/llvm-17/cmake ..
apt-get install -y liblld-17-dev
cmake -DLLVM_DIR=/usr/lib/llvm-17/cmake ..
open "build/_deps/pybind11-src/CMakeLists.txt"
cmake -DLLVM_DIR=/usr/lib/llvm-17/cmake .. --trace
find . -name "CMakeLists.txt" | grep pybind11
open "./_deps/pybind11-src/CMakeLists.txt"
edit 'cmake_minimum_required(VERSION 3.4)' 'cmake_minimum_required(VERSION 3.5)' True
cmake -DLLVM_DIR=/usr/lib/llvm-17/cmake ..
make -j$(nproc)
ls -la python_bindings/src/halide/
cmake -DLLVM_DIR=/usr/lib/llvm-17/cmake -DWITH_PYTHON_BINDINGS=OFF ..
make -j$(nproc)
ctest
