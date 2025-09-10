ls
open "README.md"
ls .github/workflows
open ".github/workflows/unit-tests.yaml"
sudo apt-get update && sudo apt-get install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr libyaml-dev libbpf-dev linux-tools-common flex bison libssl-dev
apt-get update && apt-get install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr libyaml-dev libbpf-dev linux-tools-common flex bison libssl-dev
apt-cache policy gcc g++ clang
apt-get install -y gcc g++ clang libsystemd-dev gcovr libyaml-dev libbpf-dev linux-tools-common flex bison libssl-dev
cd build
cmake ..
apt-get install -y cmake
cmake ..
make
ls ci/scripts
ls ../ci/scripts
open ".github/workflows/unit-tests.yaml"
ls .github/workflows
cd .. && ls .github/workflows
open ".github/workflows/unit-tests.yaml"
open "README.md"
cd build && ls
ls bin
ls test
cd .. && ls tests
ls tests/runtime
open "tests/CMakeLists.txt"
open "tests/runtime/CMakeLists.txt"
cd build && ctest
cmake -DBUILD_TESTING=ON ..
cmake -DBUILD_TESTING=ON -DFLB_FILTER_GEOIP2=OFF ..
make
ctest
open "tests/CMakeLists.txt"
open "CMakeLists.txt"
cd .. && ls
open "CMakeLists.txt"
cmake -DBUILD_TESTING=ON -DFLB_FILTER_GEOIP2=OFF .
make
cd build && ctest
ls ../tests/runtime
ls bin
