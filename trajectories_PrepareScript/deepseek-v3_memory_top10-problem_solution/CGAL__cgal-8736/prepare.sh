ls -la
ls -la .github/workflows
open ".github/workflows/cmake-all.yml"
sudo apt-get update && sudo apt-get install -y libboost-dev libboost-program-options-dev libmpfr-dev libeigen3-dev
apt-get update && apt-get install -y libboost-dev libboost-program-options-dev libmpfr-dev libeigen3-dev
mkdir -p build && cd build && cmake -DWITH_examples=ON -DWITH_tests=ON -DWITH_demos=ON -DBUILD_TESTING=ON ..
apt-get install -y cmake
cmake -DWITH_examples=ON -DWITH_tests=ON -DWITH_demos=ON -DBUILD_TESTING=ON ..
apt-get install -y g++ build-essential
cmake -DWITH_examples=ON -DWITH_tests=ON -DWITH_demos=ON -DBUILD_TESTING=ON ..
make
ctest
ctest -R "test_" -N
ctest -R "AABB_tree" --output-on-failure
ctest -R "Surface_mesh" --output-on-failure
timeout 300 ctest --output-on-failure
