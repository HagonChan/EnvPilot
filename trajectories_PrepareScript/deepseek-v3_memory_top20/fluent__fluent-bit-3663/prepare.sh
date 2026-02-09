ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
apt-get update && apt-get install -y gcc g++ clang libsystemd-dev gcovr bison flex libssl-dev zlib1g-dev libc-dev
apt-get install -y gcc g++ clang libsystemd-dev gcovr bison flex libssl-dev zlib1g-dev libc-dev
mkdir -p build && cd build && cmake ..
apt-get install -y cmake
cmake ..
make
cmake -DCMAKE_C_FLAGS="-Wno-error" ..
make
cmake -DCMAKE_C_FLAGS="-Wno-error -Wno-array-parameter -Wno-stringop-overflow" ..
make
ls -la ci/scripts
open ".github/workflows/unit-tests.yaml"
ls -la .github/workflows
ls -la
ls -la scripts
open "../Makefile"
open "../CMakeLists.txt"
cmake -DFLB_TESTS_RUNTIME=On ..
make
ls -la bin
./bin/flb-rt-out_stdout
./bin/flb-rt-in_dummy
ctest
cat Testing/Temporary/LastTest.log
