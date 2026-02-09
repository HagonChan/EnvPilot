ls -la
ls -la .github/workflows
open ".github/workflows/gha.yml"
open "README.md"
sudo apt-get update && sudo apt-get install -y gcc cmake make git libgtest-dev
apt-get update && apt-get install -y gcc cmake make git libgtest-dev
cmake .
make
make test
ls -la test
cmake -DBUILD_TESTING=ON .
open "test/CMakeLists.txt"
git clone https://github.com/google/googletest.git && cd googletest && mkdir build && cd build && cmake .. && make && make install
apt-get install -y g++
cd /testbed/googletest/build && cmake .. && make && make install
cd /testbed && cmake .
make
make test
ls -la test
open "test/CMakeLists.txt"
find /usr -name "libgtest*.so" -o -name "libgtest*.a"
cmake -DGTEST_INCLUDE_DIRS=/usr/include -DGTEST_BOTH_LIBRARIES=/usr/lib/x86_64-linux-gnu/libgtest.a;/usr/lib/x86_64-linux-gnu/libgtest_main.a .
edit 'FIND_PACKAGE (GTest REQUIRED)' 'SET (GTEST_INCLUDE_DIRS "/usr/include")
SET (GTEST_BOTH_LIBRARIES "/usr/lib/x86_64-linux-gnu/libgtest.a;/usr/lib/x86_64-linux-gnu/libgtest_main.a")' False
cmake .
make
cd test && ./buffer_c && ./fixint_c && ./msgpack_c && ./pack_unpack_c && ./streaming_c
ls -la
cd .. && ls -la
ls -la build
open "CMakeLists.txt"
cmake -DMSGPACK_BUILD_TESTS=ON .
apt-get install -y zlib1g-dev
cmake -DMSGPACK_BUILD_TESTS=ON .
make
open "test/CMakeLists.txt"
edit 'TARGET_LINK_LIBRARIES (${source_file_we}
        msgpack-c
        ${GTEST_BOTH_LIBRARIES}
        ${ZLIB_LIBRARIES}
        ${CMAKE_THREAD_LIBS_INIT}
    )' 'TARGET_LINK_LIBRARIES (${source_file_we}
        msgpack-c
        gtest
        gtest_main
        ${ZLIB_LIBRARIES}
        ${CMAKE_THREAD_LIBS_INIT}
    )' False
cmake .
make
apt-get install -y libgtest-dev && cd /usr/src/gtest && cmake CMakeLists.txt && make && cp *.a /usr/lib
cd /usr/src/gtest && cp lib/*.a /usr/lib
cd /testbed && cmake .
make
edit 'TARGET_LINK_LIBRARIES (${source_file_we}
        msgpack-c
        gtest
        gtest_main
        ${ZLIB_LIBRARIES}
        ${CMAKE_THREAD_LIBS_INIT}
    )' 'TARGET_LINK_LIBRARIES (${source_file_we}
        msgpack-c
        /usr/lib/libgtest.a
        /usr/lib/libgtest_main.a
        ${ZLIB_LIBRARIES}
        ${CMAKE_THREAD_LIBS_INIT}
    )' False
cmake .
make
apt-get install -y libgtest-dev && cd /usr/src/gtest && cmake CMakeLists.txt && make && cp lib/*.a /usr/lib
cd /testbed && cmake .
make
edit 'TARGET_LINK_LIBRARIES (${source_file_we}
        msgpack-c
        /usr/lib/libgtest.a
        /usr/lib/libgtest_main.a
        ${ZLIB_LIBRARIES}
        ${CMAKE_THREAD_LIBS_INIT}
    )' 'TARGET_LINK_LIBRARIES (${source_file_we}
        msgpack-c
        -lgtest
        -lgtest_main
        ${ZLIB_LIBRARIES}
        ${CMAKE_THREAD_LIBS_INIT}
    )' False

