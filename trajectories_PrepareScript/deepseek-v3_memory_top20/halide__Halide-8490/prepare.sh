ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
open "README.md"
goto 439
apt-get update && apt-get install -y build-essential cmake ninja-build llvm clang lld clang-tools-extra compiler-rt python3 python3-dev git libc++-dev libstdc++-dev
apt-get update && apt-get install -y build-essential cmake ninja-build llvm clang lld libstdc++-12-dev python3 python3-dev git libc++-dev
mkdir -p build && cd build && cmake -S .. -B .
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ jammy main' | sudo tee /etc/apt/sources.list.d/kitware.list >/dev/null && sudo apt-get update && sudo apt-get install -y cmake
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - > /usr/share/keyrings/kitware-archive-keyring.gpg && echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ jammy main' > /etc/apt/sources.list.d/kitware.list && apt-get update && apt-get install -y cmake
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz && tar -xzf cmake-3.28.0-linux-x86_64.tar.gz && export PATH=$(pwd)/cmake-3.28.0-linux-x86_64/bin:$PATH
curl -L https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz -o cmake-3.28.0-linux-x86_64.tar.gz && tar -xzf cmake-3.28.0-linux-x86_64.tar.gz && export PATH=$(pwd)/cmake-3.28.0-linux-x86_64/bin:$PATH
apt-get install -y curl
curl -L https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz -o cmake-3.28.0-linux-x86_64.tar.gz && tar -xzf cmake-3.28.0-linux-x86_64.tar.gz && export PATH=$(pwd)/cmake-3.28.0-linux-x86_64/bin:$PATH
cmake --version
cmake -S .. -B .
apt-get install -y llvm-17 clang-17 lld-17
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | gpg --dearmor - > /usr/share/keyrings/llvm-archive-keyring.gpg && echo 'deb [signed-by=/usr/share/keyrings/llvm-archive-keyring.gpg] http://apt.llvm.org/jammy/ llvm-toolchain-jammy-17 main' > /etc/apt/sources.list.d/llvm.list && apt-get update && apt-get install -y llvm-17 clang-17 lld-17
curl -fsSL https://apt.llvm.org/llvm-snapshot.gpg.key | gpg --dearmor - > /usr/share/keyrings/llvm-archive-keyring.gpg && echo 'deb [signed-by=/usr/share/keyrings/llvm-archive-keyring.gpg] http://apt.llvm.org/jammy/ llvm-toolchain-jammy-17 main' > /etc/apt/sources.list.d/llvm.list && apt-get update && apt-get install -y llvm-17 clang-17 lld-17
cmake -S .. -B . -DLLVM_DIR=/usr/lib/llvm-17/lib/cmake/llvm
export LLVM_CONFIG=/usr/lib/llvm-17/bin/llvm-config && cmake -S .. -B . -DLLVM_DIR=/usr/lib/llvm-17/lib/cmake/llvm
apt-get remove -y llvm-14 clang-14 lld-14 && apt-get autoremove -y
export LLVM_CONFIG=/usr/lib/llvm-17/bin/llvm-config && cmake -S .. -B . -DLLVM_DIR=/usr/lib/llvm-17/lib/cmake/llvm
ls -la /usr/lib/llvm-17/lib/libclang*
apt-get install -y libclang-17-dev
export LLVM_CONFIG=/usr/lib/llvm-17/bin/llvm-config && cmake -S .. -B . -DLLVM_DIR=/usr/lib/llvm-17/lib/cmake/llvm
apt-get install -y liblld-17-dev
export LLVM_CONFIG=/usr/lib/llvm-17/bin/llvm-config && cmake -S .. -B . -DLLVM_DIR=/usr/lib/llvm-17/lib/cmake/llvm
cmake --build .
cmake -S .. -B . -DLLVM_DIR=/usr/lib/llvm-17/lib/cmake/llvm -DWITH_PYTHON_BINDINGS=OFF
cmake --build .
ctest
