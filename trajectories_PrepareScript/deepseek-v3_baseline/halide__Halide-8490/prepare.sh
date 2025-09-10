ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
open "README.md"
open "Makefile"
make
sudo apt-get update && sudo apt-get install -y build-essential
apt-get update && apt-get install -y build-essential
make
apt-get install -y llvm clang
make
LLVM_OK=y make
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && echo "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-17 main" >> /etc/apt/sources.list && apt-get update && apt-get install -y llvm-17 clang-17
apt-get install -y wget
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | gpg --dearmor -o /usr/share/keyrings/llvm-snapshot.gpg && echo "deb [signed-by=/usr/share/keyrings/llvm-snapshot.gpg] http://apt.llvm.org/jammy/ llvm-toolchain-jammy-17 main" >> /etc/apt/sources.list && apt-get update && apt-get install -y llvm-17 clang-17
LLVM_OK=y make
LLVM_CONFIG=/usr/lib/llvm-17/bin/llvm-config LLVM_OK=y make
apt-get install -y zlib1g-dev libzstd-dev
LLVM_CONFIG=/usr/lib/llvm-17/bin/llvm-config LLVM_OK=y make
LLVM_CONFIG=/usr/lib/llvm-17/bin/llvm-config LLVM_OK=y make run_tests
apt-get install -y libpng-dev
LLVM_CONFIG=/usr/lib/llvm-17/bin/llvm-config LLVM_OK=y make run_tests
apt-get install -y libjpeg-dev
LLVM_CONFIG=/usr/lib/llvm-17/bin/llvm-config LLVM_OK=y make run_tests
