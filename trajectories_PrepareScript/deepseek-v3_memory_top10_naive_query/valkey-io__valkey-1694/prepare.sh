ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
sudo apt-get update && sudo apt-get install -y build-essential cmake libssl-dev tcl8.6 tclx librdmacm-dev libibverbs-dev
apt-get update && apt-get install -y build-essential cmake libssl-dev tcl8.6 tclx librdmacm-dev libibverbs-dev
make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
make test
cd deps && make
open "deps/Makefile"
ls -la
open "deps/Makefile"
ls -la
cat Makefile
cd deps && make hiredis
make hiredis
cd .. && make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
make test
cd deps && make hiredis USE_SSL=1
cd .. && make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
make test
ls -la deps/hiredis
cd deps/hiredis && make USE_SSL=1 static
cd ../.. && make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
make test
ls -la deps/hiredis
open "deps/hiredis/Makefile"
cd deps/hiredis && make USE_SSL=1 static
cd ../.. && make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
make test
ls -la deps/hiredis
open "deps/hiredis/Makefile"
cd deps/hiredis && make USE_SSL=1 static
cd ../.. && make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
make test
ls -la deps/hiredis
open "deps/hiredis/Makefile"
cd deps/hiredis && make USE_SSL=1 static
cd ../.. && make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
make test
ls -la deps/hiredis
open "deps/hiredis/Makefile"
cd deps/hiredis && make USE_SSL=1 static
cd ../.. && make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
make test
ls -la deps/hiredis
open "deps/hiredis/Makefile"
cd deps/hiredis && make USE_SSL=1 static
cd ../.. && make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
make test

