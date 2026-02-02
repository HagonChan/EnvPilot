ls
open "README.md"
open "CMakeLists.txt"
open "Makefile"
apt-get update && apt-get install -y build-essential gfortran cmake make git wget
make
make install
ls /opt/OpenBLAS/lib
