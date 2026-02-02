ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Makefile"
open "src/Makefile"
open "README.md"
sudo apt-get update && sudo apt-get install -y build-essential tcl8.6 tclx libc6-dev-i386 gcc-multilib g++-multilib gnupg2 gcc-4.8 g++-4.8 libssl-dev libsystemd-dev tcl-tls
apt-get update && apt-get install -y build-essential tcl8.6 tclx libc6-dev-i386 gcc-multilib g++-multilib gnupg2 gcc-4.8 g++-4.8 libssl-dev libsystemd-dev tcl-tls
make
apt-get install -y make
make
apt-get install -y gcc
make
apt-get install -y libjemalloc-dev
make
cd deps && make
open "deps/Makefile"
cd .. && make
open "README.md"
make distclean
make
cd deps && make hiredis linenoise lua jemalloc hdr_histogram fpconv fast_float
apt-get install -y g++
cd fast_float && make libfast_float
cd ../.. && make
make test
which tclsh
apt-get install -y tcl8.6
which tclsh8.6
ln -s /usr/bin/tclsh8.6 /usr/bin/tclsh
make test
make clean
