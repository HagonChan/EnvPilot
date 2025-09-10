ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
apt-get update && apt-get install -y gcc g++ clang libsystemd-dev gcovr cmake make
open "CMakeLists.txt"
mkdir -p build && cd build
cmake ..
apt-get install -y flex bison
cmake ..
make
find_file CMakeLists.txt lib/mbedtls-2.24.0
find_file CMakeLists.txt lib
find ../ -name CMakeLists.txt | grep mbedtls
open "../lib/mbedtls-2.24.0/library/CMakeLists.txt"
edit -Werror '' True
edit -Werror '' True
scroll_down
open "../lib/mbedtls-2.24.0/CMakeLists.txt"
make VERBOSE=1
edit -Werror '' True
scroll_down
edit 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")' '' True
make
make test
open "../CMakeLists.txt"
ls -la ../tests
ls -la ../tests/internal
open "../tests/internal/CMakeLists.txt"
make
cd ../tests/internal && ls -la
cd ../../build && find . -name "flb-it-*" -type f
open "../tests/internal/CMakeLists.txt"
cmake -DFLB_TESTS_INTERNAL=On ..
make
cd ../bin && ls -la flb-it-*
cd ../build/tests/internal && ls -la flb-it-*
cd ../../bin && ls -la flb-it-*
./flb-it-parser
./flb-it-record_accessor
