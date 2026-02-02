ls -la
ls -la .github/workflows
open ".github/workflows/root-ci.yml"
open "README.md"
apt-get update && apt-get install -y build-essential cmake make g++ clang clang++ python3 python3-pip git ccache libssl-dev zlib1g-dev qt5-doctools lcov pandoc doxygen curl tar gzip wget
pip install awscli==1.36.40 gcovr
apt-get install -y python3-pip
pip install awscli==1.36.40 gcovr
ls -la CMakeLists.txt
mkdir build && cd build
cmake ..
apt-get install -y cmake
cmake ..
apt-get install -y libx11-dev libxpm-dev libxft-dev libxext-dev
cmake ..
apt-get install -y libssl-dev
cmake ..
make -j$(nproc)
ctest
open "README.md"
open ".github/workflows/root-ci.yml"
cd ..
open ".github/workflows/root-ci.yml"
ls -la build/CTestTestfile.cmake
ls -la build/bin
ls -la test
ls -la build/test
open "test/CMakeLists.txt"
cd build && cmake -DBUILD_TESTING=ON ..
make -j$(nproc)
ls -la build/test
grep BUILD_TESTING CMakeCache.txt
cd ../test && cmake -DBUILD_TESTING=ON . && make
echo $ROOTSYS
export ROOTSYS=/testbed/build && cd ../test && cmake -DBUILD_TESTING=ON . && make
ls -la /testbed/build/ROOTConfig.cmake
export ROOT_DIR=/testbed/build && cd ../test && cmake -DBUILD_TESTING=ON . && make
ls -la /testbed/build/lib/libGpad*
export LD_LIBRARY_PATH=/testbed/build/lib:$LD_LIBRARY_PATH && cd ../test && make
open "test/CMakeLists.txt"
edit 'target_link_libraries(hworld ${ROOT_LIBRARIES})' 'target_link_libraries(hworld ${ROOT_LIBRARIES} -L/testbed/build/lib)'
open "test/CMakeLists.txt"
cd .. && ls -la test
open "test/CMakeLists.txt"
edit 'ROOT_EXECUTABLE(hworld hworld.cxx LIBRARIES Gpad)' 'ROOT_EXECUTABLE(hworld hworld.cxx LIBRARIES Gpad)
link_directories(${CMAKE_BINARY_DIR}/lib)'
cd ../build && cmake -DBUILD_TESTING=ON ..
cd /testbed && cd build
cmake -DBUILD_TESTING=ON ..
make -j$(nproc)

