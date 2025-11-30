
find_file '*.yml'
open "/testbed/.github/workflows/ci.yml" 1
apt-get update
apt-get install -y tcl8.6 tclx
make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
apt-get install -y build-essential
make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
apt-get install -y libssl-dev
make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
cd deps/hiredis && make
make -j4 all-with-unit-tests SERVER_CFLAGS='-Werror' BUILD_TLS=yes USE_FAST_FLOAT=yes
make
goto 20
cd tests/tmp && wget https://download.valkey.io/releases/valkey-7.2.7-noble-x86_64.tar.gz && tar -xvf valkey-7.2.7-noble-x86_64.tar.gz
mkdir -p tests/tmp
cd tests/tmp && wget https://download.valkey.io/releases/valkey-7.2.7-noble-x86_64.tar.gz && tar -xvf valkey-7.2.7-noble-x86_64.tar.gz
apt-get install -y wget
cd tests/tmp && wget https://download.valkey.io/releases/valkey-7.2.7-noble-x86_64.tar.gz && tar -xvf valkey-7.2.7-noble-x86_64.tar.gz
cd /testbed
mkdir -p tests/tmp && cd tests/tmp && wget https://download.valkey.io/releases/valkey-7.2.7-noble-x86_64.tar.gz && tar -xvf valkey-7.2.7-noble-x86_64.tar.gz
./runtest --verbose --tags -slow --dump-logs --other-server-path valkey-7.2.7-noble-x86_64/bin/valkey-server
find_file runtest
ls src
ls -la
ls valkey-7.2.7-noble-x86_64
ls valkey-7.2.7-noble-x86_64/bin
./valkey-server --help
ls tests
scroll_down
find_file 'README*'
