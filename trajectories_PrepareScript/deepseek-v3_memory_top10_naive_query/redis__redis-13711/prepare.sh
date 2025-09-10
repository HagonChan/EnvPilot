ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
sudo apt-get update && sudo apt-get install -y build-essential tcl8.6 tclx libc6-dev-i386 gcc-multilib g++-multilib gnupg2
apt-get update && apt-get install -y build-essential tcl8.6 tclx libc6-dev-i386 gcc-multilib g++-multilib gnupg2
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
apt-get install -y libssl-dev libjemalloc-dev
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes MALLOC=jemalloc
dpkg -l | grep jemalloc
find /usr/lib -name "*jemalloc*" -o -name "*jemalloc*.so*"
make REDIS_CFLAGS='-Werror -L/usr/lib/x86_64-linux-gnu' BUILD_TLS=yes MALLOC=jemalloc
make test
open "tests/unit/memefficiency.tcl"
