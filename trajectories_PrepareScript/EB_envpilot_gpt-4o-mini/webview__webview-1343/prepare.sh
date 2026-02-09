
ls -R
open "README.md"
apt-get update && apt-get install -y libgtk-4-dev libwebkitgtk-6.0-dev libgtk-3-dev libwebkit2gtk-4.1-dev libwebkit2gtk-4.0-dev
mkdir build && cd build && cmake .. -G Ninja
apt-get install -y cmake
cmake .. -G Ninja
apt-get install -y ninja-build
cmake .. -G Ninja
ninja
ctest
