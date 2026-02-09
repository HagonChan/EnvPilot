ls -la
ls -la .github/workflows
open ".github/workflows/tdengine-build.yml"
open ".github/workflows/tdengine-test.yml"
apt-get update && apt-get install -y gcc cmake build-essential git libjansson-dev libsnappy-dev liblzma-dev zlib1g-dev pkg-config libatomic-static libstdc++-static argp-standalone gflags pkgconfig gawk libgeos-dev libssl-dev jansson openssl snappy zlib
apt-get install -y gcc cmake build-essential git libjansson-dev libsnappy-dev liblzma-dev zlib1g-dev pkg-config libgeos-dev libssl-dev openssl
apt-cache search jansson | grep -i jansson
apt-cache search snappy | grep -i snappy
apt-cache search gflags | grep -i gflags
apt-get install -y libgflags-dev
apt-cache search libatomic-static | grep -i libatomic
apt-cache search libstdc++-static | grep -i libstdc++
apt-cache search argp-standalone | grep -i argp
open "README.md"
mkdir -p build && cd build
cmake ..
make
make test
ls -la ../build/bin
open "README.md"
cd .. && ls -la
open "README.md"
cd build && ctest
cmake -DBUILD_TESTING=ON ..
make
ls -la ../build/bin
open "README.md"
cd .. && ls -la
open "README.md"
cd build && ctest
cmake -DBUILD_TESTING=ON ..
make
ls -la ../build/bin
open "README.md"
cd .. && ls -la
open "README.md"
cd build && ctest
cmake -DBUILD_TESTING=ON ..
make
ls -la ../build/bin
open "README.md"
cd .. && ls -la
open "README.md"
cd build && ctest
cmake -DBUILD_TESTING=ON ..
make
ls -la ../build/bin
open "README.md"
cd .. && ls -la

