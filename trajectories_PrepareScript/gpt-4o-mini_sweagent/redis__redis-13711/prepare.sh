
find_file '*.yml'
open ".github/workflows/ci.yml"
apt-get update
apt-get install tcl8.6 tclx -y
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
apt-get install build-essential -y
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
apt-get install libssl-dev libjemalloc-dev -y
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
apt-get install pkg-config -y
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
ls deps
open "deps/jemalloc/README.md"
ls deps/jemalloc
open "deps/jemalloc/INSTALL.md"
cd deps/jemalloc && ./configure
make
make install
cd ../../ && make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
search_dir jemalloc
find_file setup.py
find_file requirements.txt
find_file zmalloc.h
open "/testbed/src/zmalloc.h"
cd deps/jemalloc && make uninstall
git clone https://github.com/jemalloc/jemalloc.git
cd jemalloc && ./configure
ls jemalloc
ls ..
./autogen.sh
apt-get install autoconf -y
cd jemalloc && ./autogen.sh
cd jemalloc && ./autogen.sh
ls deps/jemalloc
cd .. && cd jemalloc && ./autogen.sh
make
make install
cd ../../ && make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
cd /testbed && make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
jemalloc-config --version

make clean
make REDIS_CFLAGS='-Werror' BUILD_TLS=yes
open "src/Makefile"
make USE_JEMALLOC=yes REDIS_CFLAGS='-Werror' BUILD_TLS=yes
search_dir jemalloc
open "README.md"
make distclean

