ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y cmake make g++ libssl-dev tcl8.6 tclx
mkdir -p build-release && cd build-release && cmake -DCMAKE_BUILD_TYPE=Release .. -DBUILD_TLS=yes -DBUILD_UNIT_TESTS=yes && make -j$(nproc)
ln -sf $(pwd)/bin/valkey-server $(pwd)/../src/valkey-server && ln -sf $(pwd)/bin/valkey-cli $(pwd)/../src/valkey-cli && ln -sf $(pwd)/bin/valkey-benchmark $(pwd)/../src/valkey-benchmark && ln -sf $(pwd)/bin/valkey-server $(pwd)/../src/valkey-check-aof && ln -sf $(pwd)/bin/valkey-server $(pwd)/../src/valkey-check-rdb && ln -sf $(pwd)/bin/valkey-server $(pwd)/../src/valkey-sentinel
cd .. && ./runtest --verbose --tags -slow --dump-logs
./build-release/bin/valkey-unit-tests
