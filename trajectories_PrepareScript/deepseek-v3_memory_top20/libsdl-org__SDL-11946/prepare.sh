ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/build.yml"
open ".github/workflows/generic.yml"
open "INSTALL.md"
open "README.md"
apt-get update && apt-get install -y build-essential cmake pkg-config libasound2-dev libpulse-dev libaudio-dev libx11-dev libxext-dev libxrandr-dev libxcursor-dev libxi-dev libxinerama-dev libxxf86vm-dev libxss-dev libgl1-mesa-dev libesd0-dev libdbus-1-dev libudev-dev libibus-1.0-dev fcitx-libs-dev
apt-get install -y build-essential cmake pkg-config libasound2-dev libpulse-dev libaudio-dev libx11-dev libxext-dev libxrandr-dev libxcursor-dev libxi-dev libxinerama-dev libxxf86vm-dev libxss-dev libgl1-mesa-dev libesd0-dev libdbus-1-dev libudev-dev libibus-1.0-dev fcitx-libs-dev
mkdir -p build && cd build && cmake .. -DSDL_TESTS=ON
apt-get install -y cmake build-essential pkg-config
cmake --version
snap install cmake --classic
wget https://github.com/Kitware/CMake/releases/download/v3.27.4/cmake-3.27.4-linux-x86_64.tar.gz
curl -LO https://github.com/Kitware/CMake/releases/download/v3.27.4/cmake-3.27.4-linux-x86_64.tar.gz
apt-get update && apt-get install -y cmake
make --version
