ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open ".github/workflows/generic.yml"
open "README.md"
open "INSTALL.md"
apt-get update && apt-get install -y build-essential cmake ninja-build
mkdir -p build && cd build
cmake -DSDL_TESTS=ON ..
apt-get install -y libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev
cmake -DSDL_TESTS=ON ..
make -j$(nproc)
ctest
