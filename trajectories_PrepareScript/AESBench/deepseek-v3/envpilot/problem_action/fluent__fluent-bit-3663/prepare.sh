ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
sudo apt-get update && sudo apt-get install -y build-essential cmake make gcc g++ libc-dev libssl-dev zlib1g-dev flex bison qemu binfmt-support qemu-user-static qemu-utils qemu-efi-aarch64 qemu-system-arm
apt-get update && apt-get install -y build-essential cmake make gcc g++ libc-dev libssl-dev zlib1g-dev flex bison qemu binfmt-support qemu-user-static qemu-utils qemu-efi-aarch64 qemu-system-arm
open "README.md"
mkdir -p build && cd build && cmake ..
make
find_file CMakeLists.txt lib/mbedtls-2.24.0
find_file CMakeLists.txt ..
open "/testbed/lib/mbedtls-2.24.0/CMakeLists.txt"
edit 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" ON)' 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" OFF)' True
cd /testbed/build && make
open "/testbed/lib/mbedtls-2.24.0/CMakeLists.txt"
edit 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" OFF)' 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" OFF)
add_compile_options(-Wno-error)' True
cd /testbed/build && make
find_file run-unit-tests.sh ci/scripts
find_file run-unit-tests.sh .
ls -la ../tests
ls -la ../tests/runtime
ls -la ../tests/internal
ls -la
ls -la bin
open "Makefile"
search_file test Makefile
make api_test
./bin/api_test
ls -la lib/monkey/api
ls -la lib/monkey/api/CMakeFiles
ls -la lib/monkey/api/CMakeFiles/api_test.dir
./bin/fluent-bit --help
find_file '*test*'
/testbed/build/lib/monkey/bin/api_test
find_file '*test*' tests
ls -la
