ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open ".github/workflows/generic.yml"
search_file test .github/workflows/generic.yml
open "README.md"
open "INSTALL.md"
mkdir -p build && cd build
cmake -DSDL_TESTS=ON ..
apt update && apt install -y cmake
cmake -DSDL_TESTS=ON ..
apt install -y libx11-dev libxext-dev libxrandr-dev libxinerama-dev libxi-dev libxcursor-dev libxfixes-dev libxss-dev libgl1-mesa-dev libdbus-1-dev libasound2-dev libpulse-dev libudev-dev libibus-1.0-dev libwayland-dev libxkbcommon-dev libdrm-dev libgbm-dev
cmake -DSDL_TESTS=ON ..
make -j$(nproc)
ctest -VV --test-dir build/ -j2
ctest -VV -j2
ctest -VV -j1
ctest -N
ctest -VV -j1 -I 1,5
