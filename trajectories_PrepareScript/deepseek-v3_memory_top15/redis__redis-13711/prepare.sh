ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y build-essential tcl8.6 tclx libssl-dev libsystemd-dev tcl-tls
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
./runtest --verbose --tags -slow --dump-logs
CFLAGS='-Werror' ./runtest-moduleapi --verbose --dump-logs
