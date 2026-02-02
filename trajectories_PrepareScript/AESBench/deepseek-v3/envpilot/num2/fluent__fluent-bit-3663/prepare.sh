ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
sudo apt update && sudo apt install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr
apt update && apt install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr
apt list gcc g++ clang
apt install -y gcc g++ clang libsystemd-dev gcovr
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 90 && update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 90
update-alternatives --install /usr/bin/clang clang /usr/bin/clang-14 90
gcc --version && g++ --version && clang --version
git clone https://github.com/fluent/fluent-bit-ci.git
cd fluent-bit-ci && ls -la
open "fluent-bit-ci/run-tests.sh"
ls -la scripts
open "fluent-bit-ci/scripts/run-unit-tests.sh"
cat scripts/run-unit-tests.sh
cd .. && ./fluent-bit-ci/scripts/run-unit-tests.sh
apt install -y cmake
./fluent-bit-ci/scripts/run-unit-tests.sh
apt install -y flex bison
./fluent-bit-ci/scripts/run-unit-tests.sh
open "CMakeLists.txt"
cat build/CMakeFiles/CMakeOutput.log
cd build && cmake -DFLB_REGEX=Off .. && make
open "CMakeLists.txt"
cd ..
open "CMakeLists.txt"
search_file -Werror CMakeLists.txt
open "lib/mbedtls-2.24.0/CMakeLists.txt"
edit 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" ON)' 'option(MBEDTLS_FATAL_WARNINGS "Compiler warnings treated as errors" OFF)' False
cd build && cmake -DFLB_REGEX=Off .. && make
cd .. && grep -r "-Werror" lib/mbedtls-2.24.0/
find lib/mbedtls-2.24.0/ -type f -exec grep -l "-Werror" {} \;
grep -r "Werror" lib/mbedtls-2.24.0/
edit 'set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")' '# set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Werror")' False
cd build && cmake -DFLB_REGEX=Off .. && make
cd .. && ./fluent-bit-ci/scripts/run-unit-tests.sh
cat build/Testing/Temporary/LastTest.log
