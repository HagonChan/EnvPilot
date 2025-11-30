ls -la
find .github/workflows -name "*.yml" -o -name "*.yaml"
open ".github/workflows/tdengine-test.yml"
open ".github/workflows/tdengine-build.yml"
open "README.md"
goto 100
apt-get update && apt-get install -y gcc cmake build-essential git libjansson-dev libsnappy-dev liblzma-dev zlib1g-dev pkg-config
./build.sh
./build.sh bld
mkdir debug
./build.sh bld
./build.sh gen
./build.sh bld
ls -la debug
open "debug/CMakeCache.txt"
ls -la debug/Testing
./build.sh clean
./build.sh gen
./build.sh bld
wget https://golang.org/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -O https://golang.org/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz
apt-get update && apt-get install -y curl
curl -O https://golang.org/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz
curl -LO https://golang.org/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz
ls -la
rm go1.23.linux-amd64.tar.gz
curl -LO https://golang.org/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz
ls -la
curl -LO https://dl.google.com/go/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz
file go1.23.linux-amd64.tar.gz
tar -xvf go1.23.linux-amd64.tar.gz
search_dir Go
search_file Go README.md
search_dir pre-built
open "tools/taos-tools/deps/avro/DIST_README.txt"
curl -LO https://golang.org/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz
ls -la
snap install go --classic
./build.sh bld
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
apt-get update && apt-get install -y rustc cargo
./build.sh bld
rustup update

apt-get install --reinstall rustc cargo
./build.sh bld
find_file '*test*'
python3 tests/develop-test/test.py
apt-get update && apt-get install -y python3

