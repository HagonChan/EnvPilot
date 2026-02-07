ls -la
ls -la .github/workflows
open ".github/workflows/tdengine-build.yml"
open ".github/workflows/tdengine-test.yml"
open ".github/workflows/run-tests-on-linux.yml"
open "README.md"
apt-get update
apt-get install -y build-essential cmake libssl-dev libjansson-dev libsnappy-dev liblz4-dev libz-dev libzstd-dev libcurl4-openssl-dev libgomp1 libatomic1 libjemalloc-dev libgoogle-perftools-dev libboost-all-dev
mkdir -p build && cd build && cmake ..
make -j$(nproc)
make -j$(nproc)
make -j$(nproc)
wget https://github.com/openssl/openssl/releases/download/openssl-3.1.3/openssl-3.1.3.tar.gz -O /testbed/.externals/build/ext_ssl/src/openssl-3.1.3.tar.gz
apt-get install -y wget
wget https://github.com/openssl/openssl/releases/download/openssl-3.1.3/openssl-3.1.3.tar.gz -O /testbed/.externals/build/ext_ssl/src/openssl-3.1.3.tar.gz
sha256sum /testbed/.externals/build/ext_ssl/src/openssl-3.1.3.tar.gz
git clone https://github.com/PCRE2Project/pcre2.git /testbed/.externals/build/ext_pcre2/src/ext_pcre2
rm -rf /testbed/.externals/build/ext_pcre2/src/ext_pcre2 && git clone https://github.com/PCRE2Project/pcre2.git /testbed/.externals/build/ext_pcre2/src/ext_pcre2
make -j$(nproc)
make test
ls -la test
open "CMakeLists.txt"
cd .. && ls -la
open "CMakeLists.txt"
ls -la tests
open "tests/How-To-Run-Test-And-How-To-Add-New-Test-Case.md"
cd tests/pytest && ./smoketest.sh
pip3 install distro
apt-get install -y python3 python3-pip
pip3 install distro
./smoketest.sh
pip3 install fabric2
./smoketest.sh
find /testbed/build -name "taos*.so"
open "README.md"
cd /testbed && ls -la
open "README.md"
find /testbed -name "*python*"
git clone https://github.com/taosdata/taos-connector-python.git /testbed/taos-connector-python
cd /testbed/taos-connector-python && python3 setup.py build
ls -la
pip3 install -e .
python3 -c "import taos; print(taos.__version__)"
find /testbed/build -name "libtaos.so"
export LD_LIBRARY_PATH=/testbed/build/build/lib:$LD_LIBRARY_PATH && python3 -c "import taos; print(taos.__version__)"
cd /testbed/tests/pytest && ./smoketest.sh
pip3 install psutil
apt-get install -y lsof psmisc
./smoketest.sh

