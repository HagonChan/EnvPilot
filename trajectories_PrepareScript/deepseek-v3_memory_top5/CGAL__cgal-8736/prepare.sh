ls -la
ls -la .github/workflows
open ".github/workflows/cmake-all.yml"
apt-get install -y libboost-dev libboost-program-options-dev libmpfr-dev libeigen3-dev
mkdir build && cd build && cmake -DWITH_examples=ON -DWITH_tests=ON -DWITH_demos=ON -DBUILD_TESTING=ON ..
apt-get install -y cmake
cmake -DWITH_examples=ON -DWITH_tests=ON -DWITH_demos=ON -DBUILD_TESTING=ON ..
apt-get install -y g++
cmake -DWITH_examples=ON -DWITH_tests=ON -DWITH_demos=ON -DBUILD_TESTING=ON ..
make
ctest
ctest -R "test_" -j 1
