ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y build-essential tcl libcurl4-openssl-dev mesa-vulkan-drivers vulkan-sdk rocblas-dev hipblas-dev libcurl-devel
apt-cache search vulkan
apt-get install -y build-essential tcl libcurl4-openssl-dev mesa-vulkan-drivers libvulkan-dev
mkdir build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release
which cmake
apt-get install -y cmake
mkdir build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release
cd .. && cmake . -DCMAKE_BUILD_TYPE=Release
cd /testbed && mkdir build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release
cd build && cmake .. -DCMAKE_BUILD_TYPE=Release
make
ctest
open "/testbed/build/Testing/Temporary/LastTest.log"
