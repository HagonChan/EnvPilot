ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
open "ci/scripts/run-unit-tests.sh"
open "README.md"
sudo apt-get update && sudo apt-get install -y gcc g++ clang libsystemd-dev libyaml-dev libbpf-dev linux-tools-common cmake flex bison openssl
apt-get update && apt-get install -y gcc g++ clang libsystemd-dev libyaml-dev libbpf-dev linux-tools-common cmake flex bison openssl
cd build && cmake .. && make
apt-get install -y libssl-dev
make
open "../CMakeLists.txt"
search_file target_link_libraries ../CMakeLists.txt
search_file 'find_package(OpenSSL' ../CMakeLists.txt
goto 622
search_file 'add_executable(fluent-bit' ../CMakeLists.txt
search_file add_subdirectory ../CMakeLists.txt
open "src/CMakeLists.txt"
search_file add_executable ../CMakeLists.txt
open "plugins/CMakeLists.txt"
open "examples/CMakeLists.txt"
open "tests/internal/CMakeLists.txt"
search_file executable ../CMakeLists.txt
make
search_file fluent-bit ../CMakeLists.txt
search_file target_link_libraries ../CMakeLists.txt
search_file 'find_package(OpenSSL' ../CMakeLists.txt
goto 622
search_file add_executable ../CMakeLists.txt
make
search_file fluent-bit ../CMakeLists.txt
search_file target_link_libraries ../CMakeLists.txt
search_file 'find_package(OpenSSL' ../CMakeLists.txt
search_file add_executable ../CMakeLists.txt
make
search_file fluent-bit ../CMakeLists.txt
search_file target_link_libraries ../CMakeLists.txt
search_file 'find_package(OpenSSL' ../CMakeLists.txt
search_file add_executable ../CMakeLists.txt
make
search_file fluent-bit ../CMakeLists.txt
search_file target_link_libraries ../CMakeLists.txt
search_file 'find_package(OpenSSL' ../CMakeLists.txt
search_file add_executable ../CMakeLists.txt
make
search_file fluent-bit ../CMakeLists.txt
search_file target_link_libraries ../CMakeLists.txt
search_file 'find_package(OpenSSL' ../CMakeLists.txt
search_file add_executable ../CMakeLists.txt
make

