ls -R
open "CMakeLists.txt"
search_file find_package CMakeLists.txt

search_file PkgConfig CMakeLists.txt
open "README.md"
open "INSTALL.md"
find_file Makefile
find_file '*' test
search_file TEST CMakeLists.txt
apt update
apt install libinotify-dev
apt search inotify
apt install libinotifytools0-dev
apt install -y libinotifytools0-dev
mkdir build && cd build && cmake .. -DSDL_TESTS=ON
apt install -y cmake
cmake .. -DSDL_TESTS=ON
apt install -y libx11-dev
cmake .. -DSDL_TESTS=ON
apt install -y libasound2-dev
cmake .. -DSDL_TESTS=ON
apt install -y libxext-dev libxrandr-dev
cmake .. -DSDL_TESTS=ON
make
ctest
