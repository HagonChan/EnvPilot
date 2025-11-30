
find_file '*.yml' .
open "/testbed/.github/workflows/cmake-all.yml"
apt-get install -y libboost-dev libboost-program-options-dev libmpfr-dev libeigen3-dev
apt-get update
apt-get install -y libboost-dev libboost-program-options-dev libmpfr-dev libeigen3-dev
mkdir build && cd build && CXX=clang++ cmake -DWITH_examples=ON -DWITH_tests=ON -DWITH_demos=ON -DBUILD_TESTING=ON .. && ctest -L Installation -j $(getconf _NPROCESSORS_ONLN)
apt-get install -y cmake
mkdir build && cd build && CXX=clang++ cmake -DWITH_examples=ON -DWITH_tests=ON -DWITH_demos=ON -DBUILD_TESTING=ON .. && ctest -L Installation -j $(getconf _NPROCESSORS_ONLN)
mkdir -p build && cd build && CXX=clang++ cmake -DWITH_examples=ON -DWITH_tests=ON -DWITH_demos=ON -DBUILD_TESTING=ON .. && ctest -L Installation -j $(getconf _NPROCESSORS_ONLN)
cd /testbed && mkdir build && cd build && CXX=clang++ cmake -DWITH_examples=ON -DWITH_tests=ON -DWITH_demos=ON -DBUILD_TESTING=ON .. && ctest -L Installation -j $(getconf _NPROCESSORS_ONLN)
cd build && CXX=clang++ cmake -DWITH_examples=ON -DWITH_tests=ON -DWITH_demos=ON -DBUILD_TESTING=ON .. && ctest -L Installation -j $(getconf _NPROCESSORS_ONLN)
which clang++
apt-get install -y clang
CXX=clang++ cmake -DWITH_examples=ON -DWITH_tests=ON -DWITH_demos=ON -DBUILD_TESTING=ON .. && ctest -L Installation -j $(getconf _NPROCESSORS_ONLN)
