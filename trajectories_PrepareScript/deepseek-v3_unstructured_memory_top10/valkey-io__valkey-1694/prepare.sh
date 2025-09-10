ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y build-essential cmake libssl-dev tcl8.6 tclx librdmacm-dev libibverbs-dev
make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
./src/valkey-unit-tests
sudo apt-get install -y tcl8.6 tclx
apt-get install -y tcl8.6 tclx
./runtest
