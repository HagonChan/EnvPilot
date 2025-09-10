ls -la
ls -la .github/workflows
open ".github/workflows/root-ci.yml"
apt-get update && apt-get install -y gcc cmake make ninja-build
apt-get install -y doxygen qt5-doctools lcov pandoc awscli
apt-get install -y doxygen lcov pandoc awscli
mkdir -p build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=ON
apt-get install -y g++
cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=ON
apt-get install -y libx11-dev libxpm-dev libxft-dev libxext-dev
cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=ON
apt-get install -y libssl-dev
cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=ON
make -j$(nproc)
ctest --output-on-failure
open "../CMakeLists.txt"
search_file test ../CMakeLists.txt
ls -la ../test
open "../test/CTestCustom.cmake"
open "../test/CMakeLists.txt"
cd .. && rm -rf build && mkdir build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=ON && make -j$(nproc)
ctest --output-on-failure
search_file ROOT_ADD_TEST ../test/CMakeLists.txt
grep BUILD_TESTING CMakeCache.txt
cat CMakeOutput.log
ls -la ../test
ls -la test
make test
ls -la test
g++ -o test/stress test/stress.cxx -I../include -L../lib -lCore -lRIO -lNet -lHist -lGraf -lGpad -lTree -lMathCore
apt-get install -y root-system root-system-dev
apt-get install -y software-properties-common && add-apt-repository -y ppa:ubuntu-toolchain-r/test && apt-get update && apt-get install -y root-system root-system-dev
