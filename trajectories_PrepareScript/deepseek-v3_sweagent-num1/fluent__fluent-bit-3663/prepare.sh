ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
ls -la ci/scripts/run-unit-tests.sh
open "README.md"
open "CMakeLists.txt"
ls -la tests
ls -la tests/internal
open "tests/internal/CMakeLists.txt"
mkdir -p build && cd build && cmake -DFLB_TESTS_INTERNAL=On ..
apt-get update && apt-get install -y cmake gcc-7 g++-7 clang-6.0 libsystemd-dev
apt-get install -y cmake gcc g++ clang libsystemd-dev
cmake -DFLB_TESTS_INTERNAL=On ..
apt-get install -y flex bison
cmake -DFLB_TESTS_INTERNAL=On ..
make
open "lib/mbedtls-2.24.0/CMakeLists.txt"
find . -name "CMakeLists.txt" | grep mbedtls
open "CMakeLists.txt"
cd .. && ls -la
open "CMakeLists.txt"
cd build && cmake -DFLB_TESTS_INTERNAL=On ..
make
find .. -name "CMakeLists.txt" | grep mbedtls
open "../lib/mbedtls-2.24.0/CMakeLists.txt"
edit 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" ON)' 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" OFF)' False
cmake -DFLB_TESTS_INTERNAL=On ..
make
edit 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" OFF)' 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" OFF)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-error")' False
cmake -DFLB_TESTS_INTERNAL=On ..
make
edit 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-error")' 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-error=array-parameter -Wno-error=stringop-overflow")' False
cmake -DFLB_TESTS_INTERNAL=On ..
make
cd bin && ls -la
./flb-it-parser
./flb-it-aws_credentials
./flb-it-stream_processor
./flb-it-metrics
