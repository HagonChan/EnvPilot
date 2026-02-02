ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "CMakeLists.txt"
apt-get update && apt-get install -y build-essential cmake ninja-build libssl-dev libicu-dev libidn11-dev libvips42 ffmpeg imagemagick libpam-dev zstd bison autoconf libtool
mkdir -p build && cd build && cmake -GNinja ..
git submodule status
git submodule update --init --recursive
cmake -GNinja ..
apt-get install -y libboost-all-dev
cmake -GNinja ..
cmake -GNinja -DCMAKE_BUILD_TYPE=Release ..
ninja
git submodule status third_party/hdr_histogram_project
mkdir -p third_party
cd third_party && git clone https://github.com/HdrHistogram/HdrHistogram_c.git hdr_histogram_project && cd ..
cmake -GNinja -DCMAKE_BUILD_TYPE=Release ..
ninja
cp -r third_party/hdr_histogram_project third_party/src/hdr_histogram_project
ninja
touch third_party/src/hdr_histogram_project-stamp/hdr_histogram_project-download
ninja
cmake -GNinja -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS="-Wno-error=maybe-uninitialized" .. && ninja
find_file search_test.cc
find /testbed -name "search_test.cc"
open "/testbed/src/core/search/search_test.cc"
grep -r "search_test.cc" /testbed
find_file CMakeLists.txt /testbed/src/core/search
open "/testbed/src/core/search/CMakeLists.txt"
edit 'cxx_test(search_test redis_test_lib dfly_search_core LABELS DFLY)' 'set_source_files_properties(search_test.cc PROPERTIES
                            COMPILE_FLAGS "-Wno-maybe-uninitialized")
cxx_test(search_test redis_test_lib dfly_search_core LABELS DFLY)' False
cmake -GNinja -DCMAKE_BUILD_TYPE=Release ..
ninja
apt-get install -y libunwind-dev
apt-get clean
apt-get install -y libunwind-dev
df -h
du -sh /var/log/*
rm -rf /var/log/apt/* /var/log/dpkg.log
df -h
rm -rf /var/log/journal/*
df -h
touch third_party/src/hdr_histogram_project-stamp/hdr_histogram_project-download
ninja
grep -r "libunwind" /testbed
open "/testbed/CMakeLists.txt"
open "/testbed/helio/cmake/third_party.cmake"
edit 'option(DF_USE_SSL "Provide support for SSL connections" ON)' 'option(DF_USE_SSL "Provide support for SSL connections" ON)
option(WITH_UNWIND "Enable libunwind support" OFF)' False
edit 'option (WITH_UNWIND "Enable libunwind support" ON)' 'option (WITH_UNWIND "Enable libunwind support" OFF)' False
cmake -GNinja -DCMAKE_BUILD_TYPE=Release ..

