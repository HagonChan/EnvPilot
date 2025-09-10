ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
sudo apt update && sudo apt install -y libc6 libcurl4 git build-essential protobuf-compiler libprotobuf-dev libcurl4-openssl-dev libncurses5-dev m4 g++ libssl-dev debhelper curl
apt update && apt install -y libc6 libcurl4 git build-essential protobuf-compiler libprotobuf-dev libcurl4-openssl-dev libncurses5-dev m4 g++ libssl-dev debhelper curl
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
apt install -y python3.12
apt install -y software-properties-common && add-apt-repository -y ppa:deadsnakes/ppa && apt update && apt install -y python3.12
wget https://www.python.org/ftp/python/3.12.0/Python-3.12.0.tgz
apt install -y wget
wget https://www.python.org/ftp/python/3.12.0/Python-3.12.0.tgz
tar -xzf Python-3.12.0.tgz
cd Python-3.12.0 && ./configure --enable-optimizations
apt install -y pkg-config
make -j$(nproc)
make altinstall
python3.12 --version
cd /testbed
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
PYTHON=/usr/local/bin/python3.12 ./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
make support
make support
mkdir -p /testbed/external/.cache && wget https://github.com/google/googletest/archive/release-1.8.1.tar.gz -O /testbed/external/.cache/release-1.8.1.tar.gz
wget --no-check-certificate https://github.com/google/googletest/archive/release-1.8.1.tar.gz -O /testbed/external/.cache/release-1.8.1.tar.gz
make support
wget --no-check-certificate http://sourceforge.net/projects/boost/files/boost/1.60.0/boost_1_60_0.tar.bz2 -O /testbed/external/.cache/boost_1_60_0.tar.bz2
make support
wget --no-check-certificate https://github.com/google/re2/archive/2015-11-01.tar.gz -O /testbed/external/.cache/2015-11-01.tar.gz
wget --no-check-certificate https://github.com/google/re2/archive/2015-11-01.tar.gz -O /testbed/external/.cache/2015-11-01.tar.gz
make support
make DEBUG=1
test/run --verbose --jobs 4 -o test_output -H unit
open "test/run"
edit '#!/usr/bin/env python' '#!/usr/bin/env python3.12' False
test/run --verbose --jobs 4 -o test_output -H unit
