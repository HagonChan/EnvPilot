ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
open "README.md"
goto 28
goto 400
open "CMakeLists.txt"
sudo apt-get update && sudo apt-get install -y llvm clang cmake make ninja-build gcc g++ python3 python3-dev git build-essential libc++-dev libstdc++-dev
apt-get update && apt-get install -y llvm clang cmake make ninja-build gcc g++ python3 python3-dev git build-essential libc++-dev libstdc++-dev
apt-get install -y libstdc++-12-dev
apt-get install -y libc++-dev
llvm-config --version && clang --version && cmake --version
apt-get install -y llvm-17
apt-cache search llvm | grep llvm-
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && echo "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-17 main" >> /etc/apt/sources.list && apt-get update && apt-get install -y llvm-17
apt-get install -y wget gnupg
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && echo "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-17 main" >> /etc/apt/sources.list && apt-get update && apt-get install -y llvm-17
llvm-config-17 --version
pip install halide
apt-get install -y python3-pip
pip install halide
mkdir build && cd build
cmake -DLLVM_CONFIG=/usr/bin/llvm-config-17 ..
which cmake
apt list --installed | grep cmake
dpkg -l | grep cmake
apt-get install -y cmake
cmake --version
cmake -DLLVM_CONFIG=/usr/bin/llvm-config-17 ..
apt-get remove -y cmake cmake-data
wget -O - https://apt.kitware.com/kitware-archive.sh | bash
apt-get update && apt-get install -y cmake
cmake --version
cmake -DLLVM_CONFIG=/usr/bin/llvm-config-17 ..
apt-get install -y liblld-dev
apt-get install -y lld lld-17
cmake -DLLVM_CONFIG=/usr/bin/llvm-config-17 ..
apt-get install -y --reinstall lld lld-17
cmake -DLLVM_CONFIG=/usr/bin/llvm-config-17 ..
apt-get install -y --reinstall lld lld-17
cmake -DLLVM_CONFIG=/usr/bin/llvm-config-17 ..
ln -s /usr/bin/lld-17 /usr/bin/lld && ln -s /usr/bin/lld-17 /usr/bin/ld.lld
ls -la /usr/bin/lld* /usr/bin/ld.lld*
cmake -DLLVM_CONFIG=/usr/bin/llvm-config-17 -DLLD_DIR=/usr/lib/llvm-17 -DClang_DIR=/usr/lib/llvm-17 ..
apt-get install -y wabt
cmake -DLLVM_CONFIG=/usr/bin/llvm-config-17 -DLLD_DIR=/usr/lib/llvm-17 -DClang_DIR=/usr/lib/llvm-17 ..
apt-get install -y lld-17 lldb-17 liblld-17-dev
cmake -DLLVM_CONFIG=/usr/bin/llvm-config-17 -DLLD_DIR=/usr/lib/llvm-17 -DClang_DIR=/usr/lib/llvm-17 ..

