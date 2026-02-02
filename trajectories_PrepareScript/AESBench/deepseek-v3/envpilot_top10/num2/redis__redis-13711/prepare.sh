ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
sudo apt-get update && sudo apt-get install -y build-essential tcl8.6 tclx libc6-dev-i386 gcc-multilib g++-multilib gnupg2 gcc-4.8 g++-4.8 libssl-dev libsystemd-dev tcl-tls
apt-get update && apt-get install -y build-essential tcl8.6 tclx libc6-dev-i386 gcc-multilib g++-multilib gnupg2 gcc-4.8 g++-4.8 libssl-dev libsystemd-dev tcl-tls
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
apt-get install -y make
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
apt-get install -y gcc
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
apt-get install -y libjemalloc-dev
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
open "Makefile"
open "src/Makefile"
make MALLOC=libc REDIS_CFLAGS='-Werror' BUILD_TLS=yes
apt-get install -y libssl-dev
make MALLOC=libc REDIS_CFLAGS='-Werror' BUILD_TLS=yes
cd deps && make
open "deps/Makefile"
ls -la
cd lua && make
make linux
apt-get install -y libreadline-dev
make linux
cd .. && cd hdr_histogram && make
cd .. && cd fpconv && make
cd .. && cd fast_float && make
apt-get install -y g++
make
cd ../.. && make MALLOC=libc REDIS_CFLAGS='-Werror' BUILD_TLS=yes
cd deps/hiredis && make
cd ../.. && make MALLOC=libc REDIS_CFLAGS='-Werror' BUILD_TLS=yes
cd deps/hiredis && make SSL=1
cd ../.. && make MALLOC=libc REDIS_CFLAGS='-Werror' BUILD_TLS=no
./runtest
tclsh
apt-get install -y tcl8.6
ln -s /usr/bin/tclsh8.6 /usr/bin/tclsh
tclsh
./runtest
