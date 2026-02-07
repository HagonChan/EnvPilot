ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
sudo apt-get update && sudo apt-get install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr libyaml-dev libbpf-dev linux-tools-common
apt-get update && apt-get install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr libyaml-dev libbpf-dev linux-tools-common
apt-cache search gcc | grep ^gcc- && apt-cache search clang | grep ^clang-
apt-get install -y gcc-12 g++-12 clang-15
apt-get install -y libsystemd-dev gcovr libyaml-dev libbpf-dev linux-tools-common
mkdir -p build && cd build && cmake ..
apt-get install -y cmake
cmake ..
apt-get install -y flex bison
cmake ..
CXX=g++-12 cmake ..
make
apt-get install -y libssl-dev
make
grep -r "ssl" ../CMakeLists.txt
cmake .. -DOPENSSL_ROOT_DIR=/usr/include/openssl -DOPENSSL_LIBRARIES=/usr/lib/x86_64-linux-gnu && make
grep -r "test" ../CMakeLists.txt
ctest
cmake .. -DFLB_TESTS_RUNTIME=On -DFLB_TESTS_INTERNAL=On && make

