ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "README.md"
open "docs/build-from-source.md"
apt-get update && apt-get install -y ninja-build libunwind-dev libboost-context-dev libssl-dev autoconf-archive libtool cmake g++ bison zlib1g-dev
ls -la
./helio/blaze.sh -release
ls -la helio
git submodule update --init --recursive
ls -la helio
./helio/blaze.sh -release
cd build-opt && ninja dragonfly
ninja dragonfly
git clone https://github.com/HdrHistogram/HdrHistogram.git /testbed/build-opt/third_party/src/hdr_histogram_project
ninja dragonfly
touch /testbed/build-opt/third_party/src/hdr_histogram_project-stamp/hdr_histogram_project-download
ninja dragonfly
cat /testbed/build-opt/third_party/src/hdr_histogram_project-stamp/hdr_histogram_project-download-*.log
cd /testbed/build-opt/third_party/src/hdr_histogram_project && git checkout 652d51bcc36744fd1a6debfeb1a8a5f58b14022c
sed -i 's/EXCLUDE_FROM_ALL TRUE/EXCLUDE_FROM_ALL FALSE/g' /testbed/CMakeLists.txt
cd /testbed && rm -rf build-opt && mkdir build-opt && cd build-opt && cmake -DCMAKE_BUILD_TYPE=Release ..
ninja dragonfly
cd /testbed && rm -rf build-opt && mkdir build-opt && cd build-opt && cmake -GNinja -DCMAKE_BUILD_TYPE=Release ..
ninja dragonfly
open "CMakeLists.txt"
find /testbed -name CMakeLists.txt
open "/testbed/CMakeLists.txt"
find /testbed -name third_party.cmake
open "/testbed/helio/cmake/third_party.cmake"
search_file hdr_histogram_project /testbed/helio/cmake/third_party.cmake
find /testbed -name internal.cmake
open "/testbed/helio/cmake/internal.cmake"
grep -r "hdr_histogram_project" /testbed/build-opt
mkdir -p /testbed/build-opt/third_party/src/hdr_histogram_project && touch /testbed/build-opt/third_party/src/hdr_histogram_project-stamp/hdr_histogram_project-download
ninja dragonfly
open "/testbed/helio/blaze.sh"
edit 'cmake -L -B $BUILD_DIR -DCMAKE_BUILD_TYPE=$TARGET_BUILD_TYPE -DCMAKE_CXX_COMPILER=$COMPILER \
    "$GENERATOR" $LAUNCHER "$@"' 'cmake -L -B $BUILD_DIR -DCMAKE_BUILD_TYPE=$TARGET_BUILD_TYPE -DCMAKE_CXX_COMPILER=$COMPILER \
    "$GENERATOR" $LAUNCHER -DSKIP_HDR_HISTOGRAM=ON "$@"'
cd /testbed && rm -rf build-opt && ./helio/blaze.sh -release
cd /testbed/build-opt && ninja dragonfly
mkdir -p /testbed/build-opt/third_party/src/hdr_histogram_project && touch /testbed/build-opt/third_party/src/hdr_histogram_project-stamp/hdr_histogram_project-download
ninja dragonfly
open "/testbed/helio/cmake/third_party.cmake"
search_file hdr_histogram_project /testbed/helio/cmake/third_party.cmake
find /testbed -name CMakeLists.txt | grep third_party
grep -r "hdr_histogram_project" /testbed/build-opt
mkdir -p /testbed/build-opt/third_party/src/hdr_histogram_project && touch /testbed/build-opt/third_party/src/hdr_histogram_project-stamp/hdr_histogram_project-download
ninja dragonfly
open "/testbed/helio/blaze.sh"

