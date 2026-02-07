ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/build.yml"
open ".github/workflows/generic.yml"
open "INSTALL.md"
open "README.md"
open "CMakeLists.txt"
apt-get update && apt-get install -y build-essential cmake pkg-config libasound2-dev libpulse-dev libaudio-dev libx11-dev libxext-dev libxrandr-dev libxcursor-dev libxi-dev libxinerama-dev libxxf86vm-dev libxss-dev libgl1-mesa-dev libesd0-dev libdbus-1-dev libudev-dev libibus-1.0-dev fcitx-libs-dev
mkdir -p build && cd build && cmake ..
apt-get install -y cmake
cmake ..
apt-get install -y libx11-dev libxext-dev libxrandr-dev libxcursor-dev libxi-dev libxinerama-dev libxxf86vm-dev libxss-dev
cmake ..
make
make test
ls -la
open "CMakeLists.txt"
search_file test CMakeLists.txt
cd .. && ls -la
search_file test CMakeLists.txt
rm -rf build && mkdir -p build && cd build && cmake -DSDL_TESTS=ON ..
make
ctest
