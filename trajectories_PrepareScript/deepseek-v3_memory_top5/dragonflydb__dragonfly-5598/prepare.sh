ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y build-essential cmake ninja-build libssl-dev libicu-dev libidn11-dev libvips42 ffmpeg imagemagick libpam-dev automake zstd bison autoconf libtool
mkdir -p build && cd build
cmake -DCMAKE_BUILD_TYPE=Debug -GNinja ..
git submodule status
git submodule update --init --recursive
cmake -DCMAKE_BUILD_TYPE=Debug -GNinja ..
apt-get install -y libboost-all-dev
cmake -DCMAKE_BUILD_TYPE=Debug -GNinja ..
ninja
ninja
cmake -DCMAKE_BUILD_TYPE=Debug -GNinja -DENABLE_AWS=OFF ..
open "CMakeLists.txt"
find_file CMakeLists.txt
open "helio/CMakeLists.txt"
cd .. && ls -la helio
open "helio/CMakeLists.txt"
open "helio/cmake/third_party.cmake"
cd build && cmake -DCMAKE_BUILD_TYPE=Debug -GNinja -DWITH_AWS=OFF ..
ninja
open "helio/examples/CMakeLists.txt"
search_dir s3_demo helio
search_file s3_demo CMakeLists.txt
find_file CMakeLists.txt
cd .. && find . -name CMakeLists.txt -type f
open "CMakeLists.txt"
cd build && cmake -DCMAKE_BUILD_TYPE=Debug -GNinja -DWITH_AWS=OFF .. && ninja
open "helio/examples/CMakeLists.txt"
edit 'add_subdirectory(helio)' 'if (WITH_AWS)
  add_subdirectory(helio)
else()
  message(STATUS "Skipping helio subdirectory due to AWS being disabled")
endif()'
cd build && cmake -DCMAKE_BUILD_TYPE=Debug -GNinja -DWITH_AWS=OFF .. && ninja
mkdir -p build && cd build && cmake -DCMAKE_BUILD_TYPE=Debug -GNinja -DWITH_AWS=OFF .. && ninja
cd .. && find . -name CMakeLists.txt -type f | grep examples
open "helio/CMakeLists.txt"
cd .. && git submodule update --init --recursive
cd build && cmake -DCMAKE_BUILD_TYPE=Debug -GNinja -DWITH_AWS=OFF .. && ninja
apt-get install -y libabsl-dev libgoogle-glog-dev
cd build && ninja
cd .. && rm -rf build && mkdir -p build && cd build && cmake -DCMAKE_BUILD_TYPE=Debug -GNinja -DWITH_AWS=OFF .. && ninja
cd build && cmake -DCMAKE_BUILD_TYPE=Debug -GNinja -DWITH_AWS=OFF .. > cmake_output.log 2>&1 && cat cmake_output.log
cd .. && mkdir -p build && cd build && cmake -DCMAKE_BUILD_TYPE=Debug -GNinja -DWITH_AWS=OFF .. > cmake_output.log 2>&1 && cat cmake_output.log
which ninja
cd .. && ls -la build
cd build && cmake -DCMAKE_BUILD_TYPE=Debug -GNinja -DWITH_AWS=OFF .. --trace-expand > cmake_trace.log 2>&1 && cat cmake_trace.log
cmake --help | grep Ninja
cd .. && rm -rf build && mkdir -p build && cd build && cmake -DCMAKE_BUILD_TYPE=Debug -GNinja .. && ninja
