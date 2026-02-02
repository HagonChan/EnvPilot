ls -la
ls -la .github/workflows
open ".github/workflows/tdengine-build.yml"
open ".github/workflows/tdengine-test.yml"
open "build.sh"
apt-get update && apt-get install -y gcc cmake build-essential git libjansson-dev libsnappy-dev liblzma-dev zlib1g-dev pkg-config libatomic-static libstdc++-static argp-standalone gflags pkgconfig gawk libgeos-dev libssl-dev jansson openssl snappy zlib
apt-get update && apt-get install -y gcc cmake build-essential git libjansson-dev libsnappy-dev liblzma-dev zlib1g-dev pkg-config libgeos-dev libssl-dev openssl
./build.sh gen
./build.sh bld
tail -n 50 debug/build.log
make -j 1 VERBOSE=1
rm -rf debug
./build.sh gen
make -j 1 VERBOSE=1
cd debug && ls -la
make -j 1 VERBOSE=1
apt-get update && apt-get install -y golang
make -j 1 VERBOSE=1
go version
find /testbed -name go.mod
open "/testbed/debug/tools/ext_taosadapter-prefix/src/ext_taosadapter/go.mod"
edit 'go 1.24.10' 'go 1.18' False
make -j 1 VERBOSE=1
apt-get remove -y golang && apt-get update && apt-get install -y wget && wget https://go.dev/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
export PATH=$PATH:/usr/local/go/bin && go version
which go
rm /usr/bin/go && export PATH=$PATH:/usr/local/go/bin && go version
make -j 1 VERBOSE=1
wget https://go.dev/dl/go1.24.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin && go version
make -j 1 VERBOSE=1
cd /testbed/debug/tools/ext_taosadapter-prefix/src/ext_taosadapter && go mod tidy
cd /testbed/debug && make -j 1 VERBOSE=1
wget https://go.dev/dl/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin && go version
cd /testbed/debug && make -j 1 VERBOSE=1
find / -name libtaos.so 2>/dev/null
export LD_LIBRARY_PATH=/testbed/debug/build/lib:$LD_LIBRARY_PATH && cd /testbed/debug && make -j 1 VERBOSE=1
find / -name taos.h 2>/dev/null
export CGO_CFLAGS="-I/testbed/include/client" && cd /testbed/debug && make -j 1 VERBOSE=1
open "/testbed/include/client/taos.h"
find /testbed -name taos.h
wget https://raw.githubusercontent.com/taosdata/TDengine/master/include/client/taos.h -O /testbed/include/client/taos.h
cd /testbed/debug && make -j 1 VERBOSE=1
strings /testbed/debug/build/lib/libtaos.so | grep -i version
wget https://github.com/taosdata/TDengine/releases/download/ver-3.0.0.0/libtaos.so -O /testbed/debug/build/lib/libtaos.so
find /testbed -name "*.sh" | grep -i build
wget https://www.taosdata.com/downloads/TDengine-client-Linux-x64.tar.gz -O /tmp/TDengine-client-Linux-x64.tar.gz && tar -xzf /tmp/TDengine-client-Linux-x64.tar.gz -C /tmp/ && cp /tmp/TDengine-client-*/lib/libtaos.so /testbed/debug/build/lib/
git clone https://github.com/taosdata/TDengine.git /tmp/TDengine && cd /tmp/TDengine && mkdir build && cd build && cmake .. -DBUILD_CLIENT_ONLY=ON && make
cp /tmp/TDengine/build/lib/libtaos.so /testbed/debug/build/lib/

