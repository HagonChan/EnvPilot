ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y libc6 libcurl4 git build-essential protobuf-compiler libprotobuf-dev libcurl4-openssl-dev libncurses5-dev m4 g++ libssl-dev debhelper curl
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
apt-get install -y python3.12 python3-pip
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update
apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget
wget https://www.python.org/ftp/python/3.12.0/Python-3.12.0.tar.xz
tar -xf Python-3.12.0.tar.xz && cd Python-3.12.0
./configure --enable-optimizations
apt-get install -y pkg-config
make -j$(nproc)
make install
python3.12 --version
cd /testbed
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
ln -s /usr/local/bin/python3.12 /usr/local/bin/python && ./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
make support
make DEBUG=1
test/run --verbose --jobs 4 -o test_output -H unit
