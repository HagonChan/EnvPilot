ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
sudo apt-get update && sudo apt-get install -y tcl8.6 tclx cmake libssl-dev
apt-get update && apt-get install -y tcl8.6 tclx cmake libssl-dev
make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
git submodule update --init --recursive
make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
cd deps/fast_float_c_interface && make
apt-get install -y g++
make
cd ../.. && make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
make test
cd deps/hiredis && make USE_SSL=1
cd ../.. && make test
