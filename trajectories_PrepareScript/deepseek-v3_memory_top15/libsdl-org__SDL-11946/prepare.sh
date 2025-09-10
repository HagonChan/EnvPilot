ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open ".github/workflows/generic.yml"
open "README.md"
open "INSTALL.md"
python3 --version
apt-get update && apt-get install -y python3 python3-pip
python3 --version
apt-get install -y cmake
cmake --version
search_file dependencies INSTALL.md
search_file dependencies README.md
mkdir build && cd build && cmake -DSDL_TESTS=ON ..
apt-get install -y libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev libxext-dev libwayland-dev libxkbcommon-dev wayland-protocols extra-cmake-modules
cmake -DSDL_TESTS=ON ..
make
ctest
