ls
open "README.md"
open "CMakeLists.txt"
open "Makefile"
apt-get update && apt-get install -y g++ cmake make clang clang++ pkg-config
apt-get install -y g++ cmake make pkg-config
mkdir -p build && cd build && cmake .. -DBUILD_TESTING=ON
make
ctest
