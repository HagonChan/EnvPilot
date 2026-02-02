ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ubuntu.yml"
sudo apt-get update && sudo apt-get install -y build-essential cmake ninja-build valgrind clang-tools unzip wget git libssl-dev
apt-get update && apt-get install -y build-essential cmake ninja-build valgrind clang-tools unzip wget git libssl-dev
cmake -S . -B build -DJSON_CI=On
cmake --build build --target ci_test_gcc
cmake --build build
cd build && ctest -R test_main
cd build && ctest
pwd && ls -la
./tests/test-algorithms_cpp11
find tests -name "test-*" -exec {} \;
cmake --build build --target download_test_data
cmake --build build --target help
open "../CMakeLists.txt"
open "cmake/ci.cmake"
open "../README.md"
mkdir -p test_files
find_file '*test_data*'
cd build && ctest
ctest
