ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open ".github/workflows/generic.yml"
open "README.md"
open "INSTALL.md"
ls -la CMakeLists.txt
open "CMakeLists.txt"
cmake --version
apt-get update && apt-get install -y cmake
cmake --version
mkdir -p build && cd build && cmake .. -DSDL_TESTS=ON
apt-get install -y libx11-dev libxext-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev libxss-dev libgl1-mesa-dev libdbus-1-dev libasound2-dev libudev-dev libibus-1.0-dev fcitx-libs-dev libsamplerate0-dev libsndio-dev libwayland-dev libxkbcommon-dev libdrm-dev libgbm-dev
cmake .. -DSDL_TESTS=ON
make
make test
