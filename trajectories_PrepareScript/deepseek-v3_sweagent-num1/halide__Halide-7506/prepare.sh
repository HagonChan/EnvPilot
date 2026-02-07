ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
open "README.md"
open "setup.py"
open "CMakeLists.txt"
ls -la Makefile
open "Makefile"
make
apt-get update && apt-get install -y build-essential cmake llvm
make
llvm-config --version && which clang
find /usr -name clang
apt-get install -y clang
which clang
edit 'CLANG ?= /usr/lib/llvm-14/bin/clang' 'CLANG ?= /usr/bin/clang' True
search_file CLANG Makefile
edit 'CLANG ?= $(LLVM_BINDIR)/clang' 'CLANG ?= /usr/bin/clang'
clang --version
make
apt-get install -y zlib1g-dev
make
make run_tests
apt-get install -y libpng-dev
make run_tests
apt-get install -y libjpeg-dev
make run_tests
