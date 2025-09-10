ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yaml"
open "README.md"
sudo apt-get update && sudo apt-get install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr libyaml-dev libbpf-dev linux-tools-common cmake make flex bison libssl-dev
apt-get update && apt-get install -y gcc-7 g++-7 clang-6.0 libsystemd-dev gcovr libyaml-dev libbpf-dev linux-tools-common cmake make flex bison libssl-dev
apt-get update && apt-get install -y gcc g++ clang libsystemd-dev gcovr libyaml-dev libbpf-dev linux-tools-common cmake make flex bison libssl-dev
cd build
cmake ..
make
../ci/scripts/run-unit-tests.sh
ls -la ../ci/scripts
ls -la ../bin
cmake -DBUILD_TESTING=ON ..
apt-get install -y libmaxminddb-dev
cmake -DBUILD_TESTING=ON ..
cmake -DBUILD_TESTING=ON -DFLB_FILTER_GEOIP2=OFF ..
make
ls -la ../bin
ls -la
ls -la examples
grep "BUILD_TESTING" CMakeCache.txt
ctest
