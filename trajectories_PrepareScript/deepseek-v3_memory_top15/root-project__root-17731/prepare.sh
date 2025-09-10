ls -la
ls -la .github/workflows
open ".github/workflows/root-ci.yml"
search_file apt-get .github/workflows/root-ci.yml
search_file cmake .github/workflows/root-ci.yml
open ".github/workflows/test-coverage.yml"
open "README.md"
apt-get update
apt-get install -y build-essential cmake make g++ libssl-dev
open "CMakeLists.txt"
mkdir -p build && cd build && cmake ..
apt-get install -y libx11-dev libxpm-dev libxft-dev libxext-dev
cmake ..
apt-get install -y python3-dev python3-numpy
cmake ..
cmake .. -Dbuiltin_xrootd=OFF
make -j$(nproc)
ctest
search_file BUILD_TESTING CMakeLists.txt
search_file BUILD_TESTING ../CMakeLists.txt
search_file CATCH_BUILD_TESTING ../CMakeLists.txt
cmake .. -DBUILD_TESTING=ON
make -j$(nproc)
ctest
search_file add_test ../CMakeLists.txt
search_file enable_testing ../CMakeLists.txt
ls -la ../test
cd ../test && make stress
ls -la ../build/bin
export PATH="../build/bin:$PATH" && make stress
./stress
make stressHistogram
./stressHistogram
