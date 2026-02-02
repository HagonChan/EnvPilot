ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
open "README.md"
open "CMakeLists.txt"
open "Makefile"
apt-get update && apt-get install -y clang cmake make llvm lld clang-tools-extra compiler-rt gcc g++ python3 python3-dev git build-essential libc++-dev libstdc++-dev
apt-get update && apt-get install -y clang cmake make llvm lld gcc g++ python3 python3-dev git build-essential libstdc++-12-dev
make
LLVM_OK=y make
apt-get remove -y llvm-14 clang-14 && apt-get install -y llvm-17 clang-17
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && echo "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-17 main" >> /etc/apt/sources.list && apt-get update && apt-get install -y llvm-17 clang-17
apt-get install -y wget
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && echo "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-17 main" >> /etc/apt/sources.list && apt-get update && apt-get install -y llvm-17 clang-17
make
find /usr -name llvm-config-17
export LLVM_CONFIG=/usr/bin/llvm-config-17 && make
apt-get install -y libzstd-dev
make
