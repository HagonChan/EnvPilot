ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
open "README.md"
open "CMakeLists.txt"
apt-get update && apt-get install -y clang cmake make ninja-build llvm-dev libclang-dev lld clang-tools-extra compiler-rt gcc g++ python3 python3-dev git build-essential libc++-dev libstdc++-dev
apt-get update && apt-get install -y clang cmake make ninja-build llvm-dev libclang-dev lld gcc g++ python3 python3-dev git build-essential libc++-dev libstdc++-12-dev
mkdir -p build && cd build
cmake -GNinja -DCMAKE_CXX_STANDARD=17 ..
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz && tar -xzf cmake-3.28.0-linux-x86_64.tar.gz --directory /usr/local --strip-components=1
apt-get install -y wget
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz && tar -xzf cmake-3.28.0-linux-x86_64.tar.gz --directory /usr/local --strip-components=1
tar -xzf cmake-3.28.0-linux-x86_64.tar.gz --directory /usr/local --strip-components=1
cmake --version
export PATH=/usr/local/bin:$PATH && cmake --version
cmake -GNinja -DCMAKE_CXX_STANDARD=17 ..
apt-get remove -y llvm-14 clang-14
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && echo "deb http://apt.llvm.org/focal/ llvm-toolchain-focal-17 main" >> /etc/apt/sources.list
curl -fsSL https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && echo "deb http://apt.llvm.org/focal/ llvm-toolchain-focal-17 main" >> /etc/apt/sources.list
apt-get install -y curl
curl -fsSL https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && echo "deb http://apt.llvm.org/focal/ llvm-toolchain-focal-17 main" >> /etc/apt/sources.list
apt-get update && apt-get install -y llvm-17 clang-17 lld-17 liblld-17-dev
apt-get install -y --fix-missing llvm-17 clang-17 lld-17 liblld-17-dev
clang-17 --version && llvm-config-17 --version
export LLVM_CONFIG=/usr/bin/llvm-config-17
cmake -GNinja -DCMAKE_CXX_STANDARD=17 ..
apt-get install --reinstall -y llvm-17-dev
cmake -GNinja -DCMAKE_CXX_STANDARD=17 ..
ls -la /usr/lib/llvm-17/lib/ | grep libclangBasic.a
apt-get install -y clang-17-dev
apt-get install -y libclang-17-dev
ls -la /usr/lib/llvm-17/lib/ | grep libclangBasic.a
cmake -GNinja -DCMAKE_CXX_STANDARD=17 ..
ninja
apt-get install -y python3-dev python3-pip
ninja
cmake -GNinja -DCMAKE_CXX_STANDARD=17 -DWITH_PYTHON_BINDINGS=OFF ..
ninja
ctest
