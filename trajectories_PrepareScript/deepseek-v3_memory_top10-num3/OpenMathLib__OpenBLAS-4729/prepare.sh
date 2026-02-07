ls
open "README.md"
open "CMakeLists.txt"
apt-get update && apt-get install -y gcc gfortran make cmake git wget g++ clang libxlmass-devel
open "Makefile"
mkdir -p build && cd build && cmake .. && make
which cmake || apt-get install -y cmake
cd build && cmake .. && make
mkdir -p build && cd build && cmake .. && make
pwd && ls
cd /testbed && mkdir -p build && cd build && cmake .. && make
open "Makefile"
make test
