ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
open "README.md"
open "Makefile"
sudo apt-get update && sudo apt-get install -y llvm
apt-get update && apt-get install -y llvm
make
apt-get install -y make g++
make
apt-cache search llvm | grep '^llvm-'
apt-get install -y llvm-11
make
export LLVM_CONFIG=/usr/lib/llvm-11/bin/llvm-config && make
export LLVM_OK=y && make
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && echo "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-17 main" >> /etc/apt/sources.list && apt-get update && apt-get install -y llvm-17 clang-17
apt-get install -y wget gnupg
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && echo "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-17 main" >> /etc/apt/sources.list && apt-get update && apt-get install -y llvm-17 clang-17
export LLVM_CONFIG=/usr/lib/llvm-17/bin/llvm-config && make
apt-get install -y zlib1g-dev libzstd-dev
export LLVM_CONFIG=/usr/lib/llvm-17/bin/llvm-config && make
make run_tests
apt-get install -y libpng-dev libjpeg-dev
make run_tests
