ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
sudo apt-get update && sudo apt-get install -y build-essential tcl8.6 tclx libc6-dev-i386 gcc-multilib g++-multilib libssl-dev libsystemd-dev
apt-get update && apt-get install -y build-essential tcl8.6 tclx libc6-dev-i386 gcc-multilib g++-multilib libssl-dev libsystemd-dev
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
./runtest --verbose --tags -slow --dump-logs
CFLAGS='-Werror' ./runtest-moduleapi --verbose --dump-logs
