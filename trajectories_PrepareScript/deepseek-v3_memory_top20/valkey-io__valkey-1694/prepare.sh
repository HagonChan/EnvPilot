ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y build-essential cmake libssl-dev tcl8.6 tclx librdmacm-dev libibverbs-dev
apt-get install -y build-essential cmake libssl-dev tcl8.6 tclx librdmacm-dev libibverbs-dev
apt-get install -y --fix-missing build-essential cmake libssl-dev tcl8.6 tclx librdmacm-dev libibverbs-dev
make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
./runtest --verbose --tags -slow --dump-logs
