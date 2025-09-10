ls -la
ls -la .github/workflows
open ".github/workflows/cmake-all.yml"
sudo apt-get install -y libboost-dev libboost-program-options-dev libmpfr-dev libeigen3-dev
apt-get install -y libboost-dev libboost-program-options-dev libmpfr-dev libeigen3-dev
apt-get update && apt-get install -y libboost-dev libboost-program-options-dev libmpfr-dev libeigen3-dev
mkdir build && cd build && CXX=clang++ cmake -DWITH_examples=ON -DWITH_tests=ON -DWITH_demos=ON -DBUILD_TESTING=ON ..
apt-get install -y cmake
CXX=clang++ cmake -DWITH_examples=ON -DWITH_tests=ON -DWITH_demos=ON -DBUILD_TESTING=ON ..
apt-get install -y clang
CXX=clang++ cmake -DWITH_examples=ON -DWITH_tests=ON -DWITH_demos=ON -DBUILD_TESTING=ON ..
make
ctest
