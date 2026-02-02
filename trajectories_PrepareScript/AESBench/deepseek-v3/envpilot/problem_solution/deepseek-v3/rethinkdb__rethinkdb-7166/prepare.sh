ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
sudo apt update && sudo apt install -y libc6 libcurl4 git build-essential protobuf-compiler libprotobuf-dev libcurl4-openssl-dev libncurses5-dev m4 g++ libssl-dev debhelper curl
apt update && apt install -y libc6 libcurl4 git build-essential protobuf-compiler libprotobuf-dev libcurl4-openssl-dev libncurses5-dev m4 g++ libssl-dev debhelper curl
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
apt install -y python3.12
apt install -y python3
wget https://www.python.org/ftp/python/3.12.0/Python-3.12.0.tar.xz
apt install -y wget
wget https://www.python.org/ftp/python/3.12.0/Python-3.12.0.tar.xz
tar -xf Python-3.12.0.tar.xz
cd Python-3.12.0 && ./configure --enable-optimizations
apt install -y pkg-config
./configure --enable-optimizations
make -j$(nproc)
make install
python3.12 --version
cd /testbed
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs PYTHON=/usr/local/bin/python3.12
make support
make support
mkdir -p /testbed/external/.cache && wget https://github.com/google/googletest/archive/release-1.8.1.tar.gz -O /testbed/external/.cache/release-1.8.1.tar.gz
make support
make DEBUG=1
build/debug/rethinkdb-unittest
grep -A 10 "UtilsTest.TimeLocal" build/debug/rethinkdb-unittest.log
build/debug/rethinkdb-unittest --log-file=unittest.log
grep -A 10 "UtilsTest.TimeLocal" unittest.log
ls -la
ls -la build/debug
build/debug/rethinkdb-unittest --gtest_filter=UtilsTest.TimeLocal --gtest_output=xml:unittest.xml
ls -la test/integration
ls -la test
open "test/run"
python3.12 test/run
ln -s /usr/local/bin/python3.12 /usr/local/bin/python
python test/run
ls -la drivers/python
ls -la drivers
open "Makefile"
open "mk/main.mk"
open "src/build.mk"
open "test/build.mk"
make py-driver
ls -la drivers
open "README.md"
ls -la build/debug

