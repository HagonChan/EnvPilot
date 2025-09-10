ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Makefile"
open "README.md"
sudo apt-get update && sudo apt-get install -y tcl8.6 tclx
apt-get update && apt-get install -y tcl8.6 tclx
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
apt-get install -y build-essential
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
apt-get install -y libssl-dev libjemalloc-dev
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes USE_JEMALLOC=no
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes MALLOC=libc
make test
