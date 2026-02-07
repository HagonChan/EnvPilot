ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
sudo apt-get update && sudo apt-get install -y build-essential cmake libssl-dev tcl8.6 tclx librdmacm-dev libibverbs-dev
apt-get update && apt-get install -y build-essential cmake libssl-dev tcl8.6 tclx librdmacm-dev libibverbs-dev
make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
make test
cd deps && make hiredis
cd .. && make clean && make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
make test
cd deps/hiredis && make ssl
apt-get install -y libssl-dev
ls -la /usr/lib/x86_64-linux-gnu/libssl*
cd deps/hiredis && make ssl LDFLAGS="-L/usr/lib/x86_64-linux-gnu -lssl -lcrypto"
make ssl LDFLAGS="-L/usr/lib/x86_64-linux-gnu -lssl -lcrypto"
open "deps/hiredis/Makefile"
ls -la deps/hiredis
ls -la
open "deps/hiredis/Makefile"
cat Makefile
make ssl
make ssl LDFLAGS="-L/usr/lib/x86_64-linux-gnu -lssl -lcrypto"
grep -i "ssl" Makefile
make USE_SSL=1 CFLAGS="-I/usr/include/openssl" LDFLAGS="-L/usr/lib/x86_64-linux-gnu -lssl -lcrypto" ssl
openssl version
apt-get install -y libssl1.1 libssl-dev=1.1.1
make USE_SSL=1 CFLAGS="-I/usr/include/openssl -DHIREDIS_TEST_SSL" LDFLAGS="-L/usr/lib/x86_64-linux-gnu -lssl -lcrypto" ssl
cd .. && make clean && make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=no USE_FAST_FLOAT=yes
cd /testbed && make clean && make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=no USE_FAST_FLOAT=yes
make test
