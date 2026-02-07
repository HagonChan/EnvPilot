ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
open "README.md"
open "CMakeLists.txt"
open "Makefile"
sudo apt-get update && sudo apt-get install -y llvm clang
apt-get update && apt-get install -y llvm clang
make run_tests
apt-get install -y make
make run_tests
apt-get install -y g++
make run_tests
apt-get install -y zlib1g-dev
make run_tests
make quiet_correctness_atomics V=1
cat stderr_atomics.txt
cat stdout_atomics.txt
make correctness_atomics
make clean && make CXXFLAGS="-march=x86-64" run_tests
make run_tests TESTS="$(make list_tests | grep -v quiet_correctness_atomics)"
