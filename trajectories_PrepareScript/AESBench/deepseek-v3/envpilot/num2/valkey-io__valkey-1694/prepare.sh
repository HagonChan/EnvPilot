ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y build-essential cmake libssl-dev tcl8.6 tclx librdmacm-dev libibverbs-dev
make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
make test
cd deps && make hiredis
cd .. && make test
cd deps/hiredis && make ssl
apt-get install -y libssl-dev
ldconfig
make ssl
make ssl LDFLAGS="-L/usr/lib/x86_64-linux-gnu -lssl -lcrypto" CFLAGS="-I/usr/include/openssl"
cd .. && make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' USE_FAST_FLOAT=yes
open "Makefile"
open "CMakeLists.txt"
ls -la ../CMakeLists.txt
open "../CMakeLists.txt"
cd .. && mkdir -p build && cd build && cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_UNIT_TESTS=ON -DBUILD_TLS=yes ..
make -j$(nproc)
./bin/valkey-unit-tests
