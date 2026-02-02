ls -la
ls -la .github/workflows
open ".github/workflows/gha.yml"
ls -la ci
open "ci/build_cmake.sh"
sudo apt-get update && sudo apt-get install -y g++-multilib clang valgrind
apt-get update && apt-get install -y g++-multilib clang valgrind
mkdir -p build && cd build
cmake -DMSGPACK_BUILD_TESTS=ON -DMSGPACK_32BIT=OFF -DBUILD_SHARED_LIBS=ON -DMSGPACK_CHAR_SIGN=ON -DCMAKE_CXX_FLAGS="-m64" -DCMAKE_C_FLAGS="" ..
apt-get install -y cmake
cmake -DMSGPACK_BUILD_TESTS=ON -DMSGPACK_32BIT=OFF -DBUILD_SHARED_LIBS=ON -DMSGPACK_CHAR_SIGN=ON -DCMAKE_CXX_FLAGS="-m64" -DCMAKE_C_FLAGS="" ..
apt-get install -y libgtest-dev
cmake -DMSGPACK_BUILD_TESTS=ON -DMSGPACK_32BIT=OFF -DBUILD_SHARED_LIBS=ON -DMSGPACK_CHAR_SIGN=ON -DCMAKE_CXX_FLAGS="-m64" -DCMAKE_C_FLAGS="" ..
apt-get install -y libpthread-stubs0-dev
cmake -DMSGPACK_BUILD_TESTS=ON -DMSGPACK_32BIT=OFF -DBUILD_SHARED_LIBS=ON -DMSGPACK_CHAR_SIGN=ON -DCMAKE_CXX_FLAGS="-m64" -DCMAKE_C_FLAGS="" ..
apt-get install -y build-essential
cmake -DMSGPACK_BUILD_TESTS=ON -DMSGPACK_32BIT=OFF -DBUILD_SHARED_LIBS=ON -DMSGPACK_CHAR_SIGN=ON -DCMAKE_CXX_FLAGS="-m64" -DCMAKE_C_FLAGS="" ..
apt-get install -y libpthread-workqueue0 libpthread-workqueue-dev
cmake -DMSGPACK_BUILD_TESTS=ON -DMSGPACK_32BIT=OFF -DBUILD_SHARED_LIBS=ON -DMSGPACK_CHAR_SIGN=ON -DCMAKE_CXX_FLAGS="-m64" -DCMAKE_C_FLAGS="" ..
cat CMakeFiles/CMakeError.log
cmake -DMSGPACK_BUILD_TESTS=ON -DMSGPACK_32BIT=OFF -DBUILD_SHARED_LIBS=ON -DCMAKE_CXX_FLAGS="-m64" -DCMAKE_C_FLAGS="" ..
apt-get install -y libpthread-stubs0-dev
find /usr -name pthread.h
cmake -DMSGPACK_BUILD_TESTS=ON -DMSGPACK_32BIT=OFF -DBUILD_SHARED_LIBS=ON -DCMAKE_CXX_FLAGS="-m64" -DCMAKE_C_FLAGS="" -DThreads_ROOT=/usr/lib/x86_64-linux-gnu ..
apt-get install -y libgtest-dev && cd /usr/src/gtest && cmake CMakeLists.txt && make && cp *.a /usr/lib
cd /usr/src/gtest && cp lib/*.a /usr/lib
cd /testbed/build && cmake -DMSGPACK_BUILD_TESTS=ON -DMSGPACK_32BIT=OFF -DBUILD_SHARED_LIBS=ON -DCMAKE_CXX_FLAGS="-m64" -DCMAKE_C_FLAGS="" ..
cmake -DMSGPACK_BUILD_TESTS=ON -DMSGPACK_32BIT=OFF -DBUILD_SHARED_LIBS=ON -DCMAKE_CXX_FLAGS="-m64" -DCMAKE_C_FLAGS="" -DCMAKE_THREAD_LIBS_INIT="-lpthread" ..
apt-get install -y zlib1g-dev
cmake -DMSGPACK_BUILD_TESTS=ON -DMSGPACK_32BIT=OFF -DBUILD_SHARED_LIBS=ON -DCMAKE_CXX_FLAGS="-m64" -DCMAKE_C_FLAGS="" -DCMAKE_THREAD_LIBS_INIT="-lpthread" ..
make
cd .. && rm -rf build && mkdir build && cd build
cmake -DMSGPACK_BUILD_TESTS=ON -DMSGPACK_32BIT=OFF -DBUILD_SHARED_LIBS=ON -DCMAKE_CXX_FLAGS="-m64" -DCMAKE_C_FLAGS="" ..
make
ctest -VV
