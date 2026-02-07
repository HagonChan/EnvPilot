ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y build-essential cmake ninja-build g++ clang libssl-dev libicu-dev libidn11-dev libvips42 ffmpeg imagemagick libpam-dev zstd bison autoconf libtool
apt-get install -y build-essential cmake ninja-build g++ clang libssl-dev libicu-dev libidn11-dev libvips42 ffmpeg imagemagick libpam-dev zstd bison autoconf libtool
mkdir -p build && cd build
cmake .. && ninja
git submodule status
git submodule update --init --recursive
cmake .. && ninja
apt-get install -y libboost-all-dev
cmake .. && ninja
cmake -DCMAKE_BUILD_TYPE=Release .. && ninja
cmake -GNinja -DCMAKE_BUILD_TYPE=Release .. && ninja
rm -rf CMakeCache.txt CMakeFiles
cmake -GNinja -DCMAKE_BUILD_TYPE=Release .. && ninja
cd .. && rm -rf build && mkdir -p build && cd build
cmake -GNinja -DCMAKE_BUILD_TYPE=Release .. && ninja
ls -la /testbed/build/_deps
git clone https://github.com/abseil/abseil-cpp.git /testbed/build/_deps/abseil_cpp-src
git clone https://github.com/abseil/abseil-cpp.git /testbed/build/_deps/abseil_cpp-src
cmake -GNinja -DCMAKE_BUILD_TYPE=Release .. && ninja
ls -la /testbed/build/third_party/src
git clone https://github.com/facebook/zstd.git /testbed/build/third_party/src/zstd_project
git clone https://github.com/facebook/zstd.git /testbed/build/third_party/src/zstd_project
git clone https://github.com/microsoft/mimalloc.git /testbed/build/third_party/src/mimalloc2_project
git clone https://github.com/microsoft/mimalloc.git /testbed/build/third_party/src/mimalloc2_project
cmake -GNinja -DCMAKE_BUILD_TYPE=Release .. && ninja
ls -la /testbed/build/third_party/src/zstd_project
touch /testbed/build/third_party/src/zstd_project-stamp/zstd_project-download
ninja
find . -name "*test*" -type f
open ".github/workflows/ci.yml"
search_file test .github/workflows/ci.yml
grep -i "test" .github/workflows/ci.yml
cd /testbed
grep -i "test" .github/workflows/ci.yml
cd build && ctest -V
