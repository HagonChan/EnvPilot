ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
open "README.md"
open "CMakeLists.txt"
open "install.sh"
ls -la tests
sudo apt-get update && sudo apt-get install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr libyaml-dev libbpf-dev linux-tools-common
apt-get update && apt-get install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr libyaml-dev libbpf-dev linux-tools-common
apt-cache search gcc | grep ^gcc- && apt-cache search g++ | grep ^g++- && apt-cache search clang | grep ^clang-
apt-get install -y gcc-11 g++-11 clang-14 libsystemd-dev gcovr libyaml-dev libbpf-dev linux-tools-common
mkdir -p build && cd build
cmake ..
apt-get install -y cmake
cmake ..
apt-get install -y flex bison
cmake ..
apt-get install -y g++
cmake ..
make
apt-get install -y libssl-dev
make
open "CMakeLists.txt"
cd .. && ls -la
open "CMakeLists.txt"
search_file OpenSSL CMakeLists.txt
search_file target_link_libraries CMakeLists.txt
search_file link_libraries CMakeLists.txt
open "DEVELOPER_GUIDE.md"
search_file mbedtls CMakeLists.txt
ls -la lib
search_file add_executable CMakeLists.txt
search_file target_link_libraries CMakeLists.txt
ls -la build
open "build/Makefile"
search_file LDFLAGS build/Makefile
search_file -lssl build/Makefile
open "build/CMakeCache.txt"
search_file OpenSSL build/CMakeCache.txt
search_file mbedtls CMakeLists.txt
open "DEVELOPER_GUIDE.md"
apt-get install -y libmbedtls-dev
cd build && cmake .. -DFLB_CRYPTO=ON -DFLB_TLS=ON -DFLB_OPENSSL=OFF -DFLB_MBEDTLS=ON
make
../ci/scripts/run-unit-tests.sh
ls -la ../ci
cd .. && ls -la
ls -la tests
ls -la tests/runtime

