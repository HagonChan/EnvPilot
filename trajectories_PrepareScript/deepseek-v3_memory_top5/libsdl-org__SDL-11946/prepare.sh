ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open ".github/workflows/generic.yml"
open "README.md"
open "INSTALL.md"
find_file requirements.txt
find_file setup.py
find_file pyproject.toml
open "CMakeLists.txt"
apt-get update && apt-get install -y python3 python3-pip
apt-get install -y cmake
mkdir -p build && cd build
cmake .. -DSDL_TESTS=ON
apt-get install -y libx11-dev libxext-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev libxss-dev libgl1-mesa-dev libasound2-dev libpulse-dev libudev-dev libdbus-1-dev libgles2-mesa-dev libegl1-mesa-dev libibus-1.0-dev fcitx-libs-dev libsamplerate0-dev libsndio-dev libwayland-dev libxkbcommon-dev wayland-protocols extra-cmake-modules
cmake .. -DSDL_TESTS=ON
make
make test
