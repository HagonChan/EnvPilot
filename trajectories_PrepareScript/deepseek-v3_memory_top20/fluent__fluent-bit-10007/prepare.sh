ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
apt-get update && apt-get install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr libyaml-dev libbpf-dev linux-tools-common flex bison cmake libssl-dev build-essential
gcc --version && g++ --version && cmake --version && flex --version && bison --version
apt-get install -y gcc-7 g++-7
apt-get install -y gcc g++
apt-get install -y --fix-missing gcc g++
gcc --version && g++ --version && cmake --version && flex --version && bison --version
apt-get install -y cmake
gcc --version && g++ --version && cmake --version && flex --version && bison --version
apt-get install -y flex bison
gcc --version && g++ --version && cmake --version && flex --version && bison --version
mkdir -p build && cd build && cmake .. && make
apt-get install -y --reinstall libyaml-dev
cmake ..
cmake -DFLB_CONFIG_YAML=Off ..
make
apt-get install -y libssl-dev
make
open "CMakeLists.txt"
cd .. && ls -la
open "CMakeLists.txt"
search_file target_link_libraries CMakeLists.txt
search_file CMAKE_C_LINK_FLAGS CMakeLists.txt
edit 'set(CMAKE_C_LINK_FLAGS "${CMAKE_C_LINK_FLAGS} -lutil")' 'set(CMAKE_C_LINK_FLAGS "${CMAKE_C_LINK_FLAGS} -lutil -lssl -lcrypto")' True
cd build && cmake .. && make
ls -la ../tests
ls -la ../tests/runtime
ls -la ../tests/CMakeLists.txt
search_file enable_testing CMakeLists.txt
search_file enable_testing
search_file add_test
ls -la ../tests/runtime/*.sh
ls -la ../tests/runtime/*
open "../tests/runtime/CMakeLists.txt"
cd .. && rm -rf build && mkdir build && cd build && cmake -DFLB_CONFIG_YAML=Off .. && make
ls -la ../bin
search_file enable_testing CMakeLists.txt
open "../CMakeLists.txt"
cd .. && rm -rf build && mkdir build && cd build && cmake -DFLB_CONFIG_YAML=Off -DENABLE_TESTING=On .. && make
cd .. && rm -rf build && mkdir build && cd build && cmake -DFLB_CONFIG_YAML=Off -DFLB_TESTS=On .. && make
open "../tests/runtime/CMakeLists.txt"
cd .. && rm -rf build && mkdir build && cd build && cmake -DFLB_CONFIG_YAML=Off -DFLB_IN_CPU=On -DFLB_IN_DISK=On .. && make
cd .. && rm -rf build && mkdir build && cd build && cmake -DFLB_CONFIG_YAML=Off -DFLB_IN_CPU=On -DFLB_IN_DISK=On -DFLB_IN_MEM=On -DFLB_IN_PROC=On -DFLB_IN_NETIF=On .. && make
ls -la ../bin
../bin/fluent-bit --help
ls -la bin
./bin/fluent-bit --help

