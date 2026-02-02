ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
open "README.md"
open "CMakeLists.txt"
open "setup.py"
open "requirements.txt"
ls -la Makefile
open "Makefile"
sudo apt-get update && sudo apt-get install -y build-essential cmake ninja-build llvm clang
apt-get update && apt-get install -y build-essential cmake ninja-build llvm clang
make
apt-get install -y zlib1g-dev
make
make run_tests
make correctness_atomics VERBOSE=1
make run_tests
