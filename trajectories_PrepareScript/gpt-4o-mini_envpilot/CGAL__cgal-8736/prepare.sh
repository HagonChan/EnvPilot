
find_file '*.yml'
open "/testbed/.github/workflows/cmake-all.yml"
apt-get update && apt-get install -y libboost-dev libboost-program-options-dev libmpfr-dev libeigen3-dev
mkdir build && cd build && CXX=clang++ cmake -DWITH_examples=ON -DWITH_tests=ON -DWITH_demos=ON -DBUILD_TESTING=ON ..
apt-get install -y cmake
apt-get clean
apt-get install -y cmake
df -h
du -h --max-depth=1 / | sort -hr
ls -lh /testbed

