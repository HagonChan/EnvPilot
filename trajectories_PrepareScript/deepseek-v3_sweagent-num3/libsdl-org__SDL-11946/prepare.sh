ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open ".github/workflows/generic.yml"
open "INSTALL.md"
open "CMakeLists.txt"
sudo apt-get update && sudo apt-get install -y cmake build-essential git
apt-get update && apt-get install -y cmake build-essential git
mkdir -p build && cd build
cmake ..
apt-get install -y libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev libxext-dev libwayland-dev libwayland-egl-backend-dev libxkbcommon-dev wayland-protocols
cmake ..
make
make test
ls -la
search_file test CMakeLists.txt
open "../CMakeLists.txt"
search_file test ../CMakeLists.txt
cmake -DSDL_TESTS=ON ..
make
ctest
