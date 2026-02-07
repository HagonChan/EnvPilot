ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/build.yml"
open ".github/workflows/generic.yml"
search_file cmake .github/workflows/generic.yml
search_file test .github/workflows/generic.yml
mkdir -p build
cd build && cmake -S .. -GNinja -DSDL_TESTS=ON -DSDL_INSTALL_TESTS=ON
sudo apt-get update && sudo apt-get install -y cmake
apt-get update && apt-get install -y cmake
cmake -S .. -GNinja -DSDL_TESTS=ON -DSDL_INSTALL_TESTS=ON
apt-get install -y ninja-build
cmake -S .. -GNinja -DSDL_TESTS=ON -DSDL_INSTALL_TESTS=ON
apt-get install -y libx11-dev libxext-dev libxrandr-dev libxinerama-dev libxi-dev libxcursor-dev libxfixes-dev libxss-dev libxv-dev libxxf86vm-dev libgl1-mesa-dev libglu1-mesa-dev libegl1-mesa-dev libgles2-mesa-dev libglvnd-dev
cmake -S .. -GNinja -DSDL_TESTS=ON -DSDL_INSTALL_TESTS=ON
cmake --build .
ctest
