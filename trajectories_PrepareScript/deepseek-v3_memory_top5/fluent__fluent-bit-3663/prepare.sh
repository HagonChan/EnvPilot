ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
sudo apt update && sudo apt install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr
apt update && apt install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr
apt list gcc g++ clang
apt install -y gcc g++ clang libsystemd-dev gcovr
find_file run-unit-tests.sh ci/scripts
find_file Makefile
find_file CMakeLists.txt
find_file README.md
open "README.md"
cd build
cmake ..
apt install -y cmake
cmake ..
apt install -y flex bison
cmake ..
make
find_file CMakeLists.txt lib/mbedtls-2.24.0
find_file CMakeLists.txt lib/mbedtls-2.24.0
find_file CMakeLists.txt
cd ..
find_file CMakeLists.txt
cd build
cmake ..
make
find_file CMakeLists.txt lib/mbedtls-2.24.0
ls -la ../lib/mbedtls-2.24.0
open "../lib/mbedtls-2.24.0/CMakeLists.txt"
edit 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" ON)' 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" OFF)' False
cd build
cmake ..
make
open "../lib/mbedtls-2.24.0/CMakeLists.txt"
edit 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" OFF)' 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" OFF)
add_compile_options(-Wno-error)' False
cd build
cmake ..
make

