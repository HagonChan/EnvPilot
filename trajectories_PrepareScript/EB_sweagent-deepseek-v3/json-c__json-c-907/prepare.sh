ls -la
open ".travis.yml"
open "CMakeLists.txt"
open "README.md"
sudo apt update && sudo apt install -y cmake gcc valgrind doxygen
apt update && apt install -y cmake gcc valgrind doxygen
mkdir json-c-build && cd json-c-build && cmake ../json-c
ls
cd .. && ls
cd json-c-build && cmake ..
make
ctest
