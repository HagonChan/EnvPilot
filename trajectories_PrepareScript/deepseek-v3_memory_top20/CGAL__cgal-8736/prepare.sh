ls -la
ls -la .github/workflows
open ".github/workflows/cmake-all.yml"
apt-get update && apt-get install -y libboost-dev libboost-program-options-dev libmpfr-dev libeigen3-dev clang cmake make
apt-get install -y libboost-dev libboost-program-options-dev libmpfr-dev libeigen3-dev clang cmake make
mkdir build && cd build && CXX=clang++ cmake -DWITH_examples=ON -DWITH_tests=ON -DWITH_demos=ON -DBUILD_TESTING=ON ..
make -j$(getconf _NPROCESSORS_ONLN)
ctest -L Installation -j$(getconf _NPROCESSORS_ONLN)
