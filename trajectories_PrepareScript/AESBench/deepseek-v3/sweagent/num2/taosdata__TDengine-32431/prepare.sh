ls -la
ls -la .github/workflows
open ".github/workflows/tdengine-build.yml"
open ".github/workflows/tdengine-test.yml"
open ".github/.github/workflows/run-tests-on-linux.yml"
open "README.md"
sudo apt-get update && sudo apt-get install -y build-essential cmake libssl-dev libjemalloc-dev libsnappy-dev liblzma-dev libz-dev libcurl4-openssl-dev libgtest-dev libgmock-dev
apt-get update && apt-get install -y build-essential cmake libssl-dev libjemalloc-dev libsnappy-dev liblzma-dev libz-dev libcurl4-openssl-dev libgtest-dev libgmock-dev
mkdir -p build && cd build && cmake ..
make -j$(nproc)
make -j$(nproc)
mkdir -p .externals/build/ext_ssl/src && wget https://github.com/openssl/openssl/releases/download/openssl-3.1.3/openssl-3.1.3.tar.gz -O .externals/build/ext_ssl/src/openssl-3.1.3.tar.gz
mkdir -p .externals/build/ext_ssl/src && curl -L https://github.com/openssl/openssl/releases/download/openssl-3.1.3/openssl-3.1.3.tar.gz -o .externals/build/ext_ssl/src/openssl-3.1.3.tar.gz
apt list --installed | grep -E 'libssl-dev|liblz4-dev|libgeos-dev|libuv1-dev|libpcre2-dev'
apt-get install -y liblz4-dev libgeos-dev libuv1-dev libpcre2-dev
make -j$(nproc)
open "../CMakeLists.txt"
open "../cmake/external.cmake"
edit 'option(TD_EXTERNALS_USE_ONLY "external dependencies use only, otherwise download-build-install" OFF)' 'option(TD_EXTERNALS_USE_ONLY "external dependencies use only, otherwise download-build-install" ON)' True
cd .. && rm -rf build && mkdir build && cd build && cmake ..
make -j$(nproc)
apt-get install -y libxxhash-dev
make -j$(nproc)
apt-get install -y libcjson-dev
make -j$(nproc)
find /usr -name "cJSON.h"
open "../CMakeLists.txt"
open "../cmake/options.cmake"
edit 'target_include_directories(api INTERFACE "include/client")' 'target_include_directories(api INTERFACE "include/client")
include_directories(/usr/include/cjson)' True
edit '# =========================================================
# Deps options
# =========================================================' '# =========================================================
# Deps options
# =========================================================
include_directories(/usr/include/cjson)'
cd .. && rm -rf build && mkdir build && cd build && cmake ..
make -j$(nproc)
find /usr -name "fast-lzma2.h"
git clone https://github.com/conor42/fast-lzma2.git && cd fast-lzma2 && mkdir build && cd build && cmake .. && make && make install
cd fast-lzma2/build && cmake .. && make && make install
mkdir -p fast-lzma2/build && cd fast-lzma2/build && cmake .. && make && make install
ls -la fast-lzma2
cd /testbed && ls -la
git clone https://github.com/conor42/fast-lzma2.git
cd fast-lzma2 && mkdir -p build && cd build && cmake .. && make && make install
ls -la fast-lzma2
cd /testbed && ls -la
cd fast-lzma2 && ls -la
make && make install
cd /testbed/build && make -j$(nproc)
open "../CMakeLists.txt"
open "../cmake/external.cmake"
edit 'set(${name}_libs "${_ins}/${v}")' 'set(${name}_libs "${${arg_INIT_EXT_CHK_NAME}_LIBNAMES}")' True
search_file lz4 ../cmake/external.cmake

