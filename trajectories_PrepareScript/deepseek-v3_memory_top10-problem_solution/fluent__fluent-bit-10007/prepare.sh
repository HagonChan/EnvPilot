ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
sudo apt-get update && sudo apt-get install -y gcc-7 g++-7 clang-6.0 libsystemd-dev libyaml-dev libbpf-dev linux-tools-common
apt-get update && apt-get install -y gcc-7 g++-7 clang-6.0 libsystemd-dev libyaml-dev libbpf-dev linux-tools-common
open "README.md"
apt-get update && apt-get install -y cmake flex bison libyaml-dev libssl-dev libsystemd-dev libbpf-dev linux-tools-common
cd build
cmake ..
apt-get install -y g++
cmake ..
make
open "README.md"
ls -la ../tests
ls -la ../tests/runtime
open "../tests/runtime/CMakeLists.txt"
ctest
cmake -DFLB_TESTS_INTERNAL=On -DFLB_TESTS_RUNTIME=On ..
make
ctest
ls -la ../bin
ls -la ../tests/internal
find . -name "flb-it-*" -type f
./bin/flb-it-lua
./bin/flb-it-parser_json
ctest
./bin/flb-it-utils
for test in ./bin/flb-it-*; do echo "Running $test..."; $test; done
