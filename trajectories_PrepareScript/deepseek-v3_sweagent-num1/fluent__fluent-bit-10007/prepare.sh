ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
open "ci/scripts/run-unit-tests.sh"
sudo apt-get update && sudo apt-get install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr libyaml-dev libbpf-dev linux-tools-common
apt-get update && apt-get install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr libyaml-dev libbpf-dev linux-tools-common
apt-cache search gcc- g++- clang-
apt-get update && apt-get install -y gcc g++ clang libsystemd-dev gcovr libyaml-dev libbpf-dev linux-tools-common
which cmake || apt-get install -y cmake
mkdir -p build && cd build
cmake -DFLB_JEMALLOC=On -DSANITIZE_ADDRESS=On ..
apt-get install -y flex bison
cmake -DFLB_JEMALLOC=On -DSANITIZE_ADDRESS=On ..
make
apt-get install -y libssl-dev
make
find_file CMakeLists.txt
cd .. && find . -name CMakeLists.txt
open "./CMakeLists.txt"
search_file OpenSSL ./CMakeLists.txt
edit 'find_package(OpenSSL)' 'find_package(OpenSSL REQUIRED)
if(OPENSSL_FOUND)
  include_directories(${OPENSSL_INCLUDE_DIR})
  link_directories(${OPENSSL_LIBRARY_DIRS})
  set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -lssl -lcrypto")
endif()' True
cd build && cmake -DFLB_JEMALLOC=On -DSANITIZE_ADDRESS=On .. && make
make test
search_file test ../CMakeLists.txt
cmake -DFLB_JEMALLOC=On -DSANITIZE_ADDRESS=On -DFLB_TESTS_RUNTIME=On -DFLB_TESTS_INTERNAL=On .. && make
ls ../bin/flb-it-*
ls ../tests/internal/
find .. -name flb-it-*
../build/bin/flb-it-utils
../build/bin/flb-it-hash
