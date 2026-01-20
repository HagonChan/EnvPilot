ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
open "README.md"
search_file 'Building Halide' README.md
goto 115
goto 213
search_file test README.md
apt-get update && apt-get install -y build-essential cmake ninja-build llvm-dev clang lld clang-tools-extra compiler-rt libc++-dev libstdc++-dev
apt-get update && apt-get install -y build-essential cmake ninja-build llvm-dev clang lld libc++-dev libstdc++6-dev
apt-get update && apt-get install -y build-essential cmake ninja-build llvm-dev clang lld libc++-dev libstdc++-12-dev
wget http://llvm.org/releases/3.9.1/clang+llvm-3.9.1-x86_64-linux-gnu-ubuntu-16.04.tar.xz
apt-get install -y wget
wget http://llvm.org/releases/3.9.1/clang+llvm-3.9.1-x86_64-linux-gnu-ubuntu-16.04.tar.xz
tar -xvf clang+llvm-3.9.1-x86_64-linux-gnu-ubuntu-16.04.tar.xz
export PATH=$(pwd)/clang+llvm-3.9.1-x86_64-linux-gnu-ubuntu-16.04/bin:$PATH && export LLVM_CONFIG=$(pwd)/clang+llvm-3.9.1-x86_64-linux-gnu-ubuntu-16.04/bin/llvm-config
llvm-config --version
apt-get install -y libtinfo5
llvm-config --version
mkdir build && cd build
cmake -DLLVM_CONFIG=$(pwd)/../clang+llvm-3.9.1-x86_64-linux-gnu-ubuntu-16.04/bin/llvm-config ..
apt-get remove -y cmake && wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/kitware.list >/dev/null && apt-get update && apt-get install -y cmake
apt-get install -y lsb-release
rm /etc/apt/sources.list.d/kitware.list && apt-get update && apt-get install -y lsb-release
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/kitware.list >/dev/null && apt-get update && apt-get install -y cmake
cmake --version
cmake -DLLVM_CONFIG=$(pwd)/../clang+llvm-3.9.1-x86_64-linux-gnu-ubuntu-16.04/bin/llvm-config ..
apt-cache search llvm-
apt-get install -y llvm-15 llvm-15-dev
llvm-config --version
export PATH=/usr/lib/llvm-15/bin:$PATH && export LLVM_CONFIG=/usr/lib/llvm-15/bin/llvm-config
llvm-config --version
cmake -DLLVM_CONFIG=/usr/lib/llvm-15/bin/llvm-config ..
rm -rf * && cmake -DLLVM_CONFIG=/usr/lib/llvm-15/bin/llvm-config ..
apt-get install -y liblld-dev
apt-get install -y lld-15
wget https://github.com/llvm/llvm-project/releases/download/llvmorg-17.0.0/clang+llvm-17.0.0-x86_64-linux-gnu-ubuntu-22.04.tar.xz
wget https://github.com/llvm/llvm-project/releases/download/llvmorg-17.0.0/clang+llvm-17.0.0-x86_64-linux-gnu-ubuntu-22.04.tar.xz
wget https://github.com/llvm/llvm-project/releases/download/llvmorg-17.0.0/clang+llvm-17.0.0-x86_64-linux-gnu-ubuntu-22.04.tar.xz
wget https://github.com/llvm/llvm-project/releases
wget https://github.com/llvm/llvm-project/releases/download/llvmorg-16.0.0/clang+llvm-16.0.0-x86_64-linux-gnu-ubuntu-22.04.tar.xz
wget https://github.com/llvm/llvm-project/releases/download/nightly/clang+llvm-17.0.0-x86_64-linux-gnu-ubuntu-22.04.tar.xz
rm -rf * && cmake -DLLVM_CONFIG=/usr/lib/llvm-15/bin/llvm-config ..
