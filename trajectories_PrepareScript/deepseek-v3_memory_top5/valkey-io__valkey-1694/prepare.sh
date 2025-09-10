ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y cmake make libssl-dev tcl8.6 tclx librdmacm-dev libibverbs-dev
mkdir -p build-release && cd build-release && cmake -DCMAKE_BUILD_TYPE=Release .. -DBUILD_TLS=yes -DBUILD_UNIT_TESTS=yes && make -j$(nproc)
apt-get install -y g++
cmake -DCMAKE_BUILD_TYPE=Release .. -DBUILD_TLS=yes -DBUILD_UNIT_TESTS=yes && make -j$(nproc)
apt-get install -y tcl8.6 tclx
cd .. && ./runtest --verbose --tags -slow --dump-logs
./src/valkey-unit-tests
cd build-release && ./bin/valkey-unit-tests
