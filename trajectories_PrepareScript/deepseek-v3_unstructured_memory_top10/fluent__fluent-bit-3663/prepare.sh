ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
ls -la ci/scripts/run-unit-tests.sh
apt-get update && apt-get install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr
apt-get install -y gcc g++ clang libsystemd-dev gcovr cmake make
ls -la CMakeLists.txt Makefile
open "CMakeLists.txt"
mkdir -p build && cd build && cmake ..
apt-get install -y flex bison
cmake ..
make
edit 'option(FLB_DEBUG               "Build with debug mode (-g)"    Yes)' 'option(FLB_DEBUG               "Build with debug mode (-g)"    Yes)
option(FLB_NO_WERROR           "Disable treating warnings as errors" Yes)'
cmake -DFLB_NO_WERROR=Yes ..
make
find_file CMakeLists.txt lib/mbedtls-2.24.0
ls -la ../lib/mbedtls-2.24.0/CMakeLists.txt
open "../lib/mbedtls-2.24.0/CMakeLists.txt"
edit 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" ON)' 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" OFF)'
cmake -DFLB_NO_WERROR=Yes ..
make
edit 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" OFF)' 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" OFF)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-error=array-parameter -Wno-error=stringop-overflow")'
cmake -DFLB_NO_WERROR=Yes ..
make
ls -la tests
ls -la ../bin
search_file test ../CMakeLists.txt
cmake -DFLB_TESTS_RUNTIME=Yes -DFLB_TESTS_INTERNAL=Yes ..
make
cd ../bin && ls -la
ls -la ../build/tests
cd ../build/tests/internal && ls -la
cd .. && make test
open "../tests/CMakeLists.txt"
find . -type f -executable | grep -i test
search_file test ../../CMakeLists.txt
cd ../../ && cmake -DFLB_TESTS_RUNTIME=Yes -DFLB_TESTS_INTERNAL=Yes -DCMAKE_VERBOSE_MAKEFILE=ON .
make
ls -la build/tests
ls -la build/tests/internal
ls -la build/tests/runtime
ls -la build/tests/runtime_shell
open "build/tests/Makefile"
open "tests/CMakeLists.txt"
