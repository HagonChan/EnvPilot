ls -la
ls -la .github/workflows
open ".github/workflows/oss-build-and-test.yml"
open "README.md"
sudo ./build/fbcode_builder/getdeps.py install-system-deps --recursive
./build/fbcode_builder/getdeps.py install-system-deps --recursive
apt-get update && apt-get install -y python3
./build/fbcode_builder/getdeps.py install-system-deps --recursive
apt-get install -y autoconf automake binutils-dev cmake libboost-all-dev libdouble-conversion-dev libdwarf-dev libevent-dev libgflags-dev liblz4-dev libsnappy-dev libsodium-dev libtool libzstd-dev ninja-build zlib1g-dev zstd
mkdir -p build && cd build && cmake .. && make
apt-get install -y build-essential g++
cmake .. && make
git clone https://github.com/fastfloat/fastfloat.git && cd fastfloat && mkdir build && cd build && cmake .. && make && make install
apt-cache search fastfloat
apt-get install -y wget
wget https://github.com/fastfloat/fastfloat/archive/refs/tags/v3.10.1.tar.gz && tar -xzf v3.10.1.tar.gz && cd fastfloat-3.10.1 && mkdir build && cd build && cmake .. && make && make install
git clone https://github.com/fastfloat/fastfloat.git
open "CMakeLists.txt"
cd .. && ls
open "CMakeLists.txt"
search_file FastFloat CMakeLists.txt
cd build && cmake .. && make
open "CMake/folly-deps.cmake"
ls -la build/fbcode_builder/CMake
mkdir -p /usr/local/include/fastfloat
wget https://raw.githubusercontent.com/fastfloat/fastfloat/main/include/fastfloat/fast_float.h -O /usr/local/include/fastfloat/fast_float.h
wget https://raw.githubusercontent.com/fastfloat/fastfloat/main/include/fast_float.h -O /usr/local/include/fastfloat/fast_float.h
wget https://github.com/fastfloat/fastfloat/archive/refs/heads/main.zip -O fastfloat.zip && unzip fastfloat.zip && cp -r fastfloat-main/include/fastfloat /usr/local/include/
