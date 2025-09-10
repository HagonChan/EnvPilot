ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y build-essential cmake libssl-dev tcl8.6 tclx
mkdir -p build-release && cd build-release && cmake -DCMAKE_BUILD_TYPE=Release .. -DBUILD_TLS=yes -DBUILD_UNIT_TESTS=yes
make -j$(nproc)
sudo apt-get install -y tcl8.6 tclx
cd .. && ./runtest --verbose --tags -slow --dump-logs
./runtest-moduleapi --verbose
ls -la build-release/bin
export PATH=$PATH:$(pwd)/build-release/bin && ./runtest --verbose --tags -slow --dump-logs
ln -s $(pwd)/build-release/bin/valkey-server $(pwd)/src/valkey-server
./runtest --verbose --tags -slow --dump-logs
