ls -la
ls -la .github/workflows
open ".github/workflows/tdengine-build.yml"
open ".github/workflows/tdengine-test.yml"
open "README.md"
sudo apt-get install -y build-essential cmake libssl-dev libjansson-dev libsnappy-dev liblzma-dev libz-dev libzstd-dev libcurl4-openssl-dev libgomp1 libatomic1
apt-get install -y build-essential cmake libssl-dev libjansson-dev libsnappy-dev liblzma-dev libz-dev libzstd-dev libcurl4-openssl-dev libgomp1 libatomic1
apt-get update
apt-get install -y build-essential cmake libssl-dev libjansson-dev libsnappy-dev liblzma-dev libz-dev libzstd-dev libcurl4-openssl-dev libgomp1 libatomic1
mkdir -p build && cd build && cmake ..
make
make
mkdir -p .externals/build/ext_xxhash/src && cd .externals/build/ext_xxhash/src && git clone https://github.com/Cyan4973/xxHash.git
wget https://github.com/Cyan4973/xxHash/archive/refs/heads/master.tar.gz -O xxHash.tar.gz
curl -L https://github.com/Cyan4973/xxHash/archive/refs/heads/master.tar.gz -o xxHash.tar.gz
open "CMakeLists.txt"
cd /testbed && ls -la
open "CMakeLists.txt"
open "cmake/external.cmake"
search_file option CMakeLists.txt
open "cmake/options.cmake"
rm -rf build && mkdir build && cd build && cmake -DBUILD_TEST=OFF ..
make
search_file cJSON cmake/options.cmake
open "cmake/options.cmake"
cd /testbed && ls -la
open "cmake/options.cmake"
rm -rf build && mkdir build && cd build && cmake -DBUILD_TEST=OFF ..
make
search_file fast-lzma2 cmake/options.cmake
open "cmake/options.cmake"
cd /testbed && ls -la
open "cmake/options.cmake"
rm -rf build && mkdir build && cd build && cmake -DBUILD_TEST=OFF ..
make
search_file openssl cmake/options.cmake
open "cmake/options.cmake"
cd /testbed && ls -la
open "cmake/options.cmake"
rm -rf build && mkdir build && cd build && cmake -DBUILD_TEST=OFF ..
make
ls -la build/bin
./build/bin/taos --version
