ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
apt-get update && apt-get install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr
apt-get install -y gcc g++ clang libsystemd-dev gcovr
ln -s /usr/bin/llvm-symbolizer-14 /usr/bin/llvm-symbolizer || true
ls -la ci/scripts/
git clone https://github.com/calyptia/fluent-bit-ci.git ci
find . -name "*.sh" -o -name "Makefile" -o -name "*.mk"
find . -name "README*"
open "./README.md"
mkdir -p build && cd build && cmake ..
apt-get install -y cmake
cmake ..
apt-get install -y flex bison
cmake ..
make
grep -r "Werror" ../lib/mbedtls-2.24.0/
edit 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")' 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")' True
open "../lib/mbedtls-2.24.0/CMakeLists.txt"
edit 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" ON)' 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" OFF)' True
cmake ..
make
grep -r "Werror" ../lib/mbedtls-2.24.0/
edit 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")' '' True
cmake ..
make
find . -name "test" -type d
find . -name "tests" -type d
grep -r "test" ../CMakeLists.txt
edit 'option(FLB_TESTS_RUNTIME       "Enable runtime tests"          No)' 'option(FLB_TESTS_RUNTIME       "Enable runtime tests"          Yes)' True
open "../CMakeLists.txt"
edit 'option(FLB_TESTS_RUNTIME       "Enable runtime tests"          No)' 'option(FLB_TESTS_RUNTIME       "Enable runtime tests"          Yes)' True
cmake ..
make
ls -la tests/
ls -la bin/
grep -r "test" ../CMakeLists.txt
ls -la ../tests/runtime/
ls -la tests/runtime/
cmake .. -DFLB_TESTS_RUNTIME=ON
make
ls -la bin/flb-rt-*
./bin/flb-rt-out_stdout
./bin/flb-rt-in_dummy
./bin/flb-rt-filter_grep
./bin/flb-rt-out_file
./bin/flb-rt-in_tail
./bin/flb-rt-out_forward

