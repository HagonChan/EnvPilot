ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/pip.yml"
open ".github/workflows/presubmit.yml"
open "pyproject.toml"
open "requirements.txt"
open "CMakeLists.txt"
open "Makefile"
which llvm-config cmake
sudo apt-get update && sudo apt-get install -y llvm cmake
apt-get update && apt-get install -y llvm cmake
make
apt-get install -y g++ llvm-9
make LLVM_OK=y
apt-get install -y g++
make LLVM_OK=y
apt-cache search llvm-17
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
apt-get install -y wget gnupg
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
echo "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-17 main" >> /etc/apt/sources.list
apt-get update && apt-get install -y llvm-17 llvm-17-dev clang-17
which llvm-config cmake
make
which llvm-config-17
open "Makefile"
edit 'LLVM_CONFIG ?= llvm-config' 'LLVM_CONFIG ?= llvm-config-17' True
make
apt-get install -y zlib1g-dev libzstd-dev
make
make run_tests
apt-get install -y libpng-dev
make run_tests
apt-get install -y libjpeg-dev
make run_tests
