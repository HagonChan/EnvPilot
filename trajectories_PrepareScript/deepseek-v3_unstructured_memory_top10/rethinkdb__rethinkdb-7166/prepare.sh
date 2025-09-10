ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
sudo apt update && sudo apt install -y libc6 libcurl4 git build-essential protobuf-compiler libprotobuf-dev libcurl4-openssl-dev libncurses5-dev m4 g++ libssl-dev debhelper curl
apt update && apt install -y libc6 libcurl4 git build-essential protobuf-compiler libprotobuf-dev libcurl4-openssl-dev libncurses5-dev m4 g++ libssl-dev debhelper curl
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
apt list python3.12
add-apt-repository ppa:deadsnakes/ppa && apt update && apt install -y python3.12
apt install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa && apt update && apt install -y python3.12
echo "deb http://ppa.launchpad.net/deadsnakes/ppa/ubuntu $(lsb_release -cs) main" >> /etc/apt/sources.list && apt update
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA6932366A755776
apt update && apt install -y python3.12
curl -O https://www.python.org/ftp/python/3.12.0/Python-3.12.0.tar.xz
tar -xf Python-3.12.0.tar.xz
cd Python-3.12.0 && ./configure --enable-optimizations
apt install -y pkg-config
./configure --enable-optimizations
make -j$(nproc)
make install
python3.12 --version
cd /testbed
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
which python3.12
PYTHON=/usr/local/bin/python3.12 ./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
make
make
curl -L https://github.com/google/re2/archive/2015-11-01.tar.gz -o /testbed/external/.cache/2015-11-01.tar.gz
curl -L http://sourceforge.net/projects/boost/files/boost/1.60.0/boost_1_60_0.tar.bz2 -o /testbed/external/.cache/boost_1_60_0.tar.bz2
curl -L https://boostorg.jfrog.io/artifactory/main/release/1.60.0/source/boost_1_60_0.tar.bz2 -o /testbed/external/.cache/boost_1_60_0.tar.bz2
make
curl -L https://dl.bintray.com/boostorg/release/1.60.0/source/boost_1_60_0.tar.bz2 -o /testbed/external/.cache/boost_1_60_0.tar.bz2
curl -L https://boostorg.jfrog.io/artifactory/main/release/1.60.0/source/boost_1_60_0.tar.bz2 -o /testbed/external/.cache/boost_1_60_0.tar.bz2
openssl sha256 /testbed/external/.cache/boost_1_60_0.tar.bz2 | awk '{print $NF}'
apt list --installed | grep libboost
PYTHON=/usr/local/bin/python3.12 ./configure --without-boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
make
apt install -y libboost-all-dev
PYTHON=/usr/local/bin/python3.12 ./configure --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
make
df -h /tmp
rm -rf /tmp/*
make
test/run
ln -s /usr/local/bin/python3.12 /usr/local/bin/python
test/run
cd drivers/python && python setup.py build
ls -la drivers
open ".github/workflows/build.yml"

