ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "README.md"
open "CMakeLists.txt"
apt-get update && apt-get install -y build-essential cmake ninja-build g++-7 llvm-12-dev clang libjpeg-dev libpng-dev
apt-get install -y build-essential cmake ninja-build llvm-12-dev clang libjpeg-dev libpng-dev
g++ --version && clang++ --version && llvm-config --version
apt-get install -y llvm-12-tools
find /usr -name llvm-config-12
export LLVM_CONFIG=/usr/bin/llvm-config-12
mkdir -p build && cd build
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DWITH_TESTS=ON ..
apt-get remove -y llvm-14-dev llvm-14-tools && apt-get install -y llvm-12-dev llvm-12-tools
export LLVM_CONFIG=/usr/bin/llvm-config-12
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DWITH_TESTS=ON ..
rm -rf /usr/lib/llvm-14/lib/cmake/clang
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DWITH_TESTS=ON ..
apt-get install -y clang-12
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DWITH_TESTS=ON ..
apt-get install -y libclang-12-dev
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DWITH_TESTS=ON ..
apt-get install -y lld-12
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DWITH_TESTS=ON ..
find /usr -name lld-config.cmake
apt-get install -y lld-12-dev
find /usr -name "*lld*Config.cmake"
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DWITH_TESTS=ON -DUSE_LLD=OFF ..
open "dependencies/llvm/CMakeLists.txt"
open "../CMakeLists.txt"
open "../dependencies/CMakeLists.txt"
open "../dependencies/llvm/CMakeLists.txt"
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DWITH_TESTS=ON -DTARGET_WEBASSEMBLY=OFF ..
apt-get install -y python3-dev
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DWITH_TESTS=ON -DTARGET_WEBASSEMBLY=OFF ..
ninja
ctest
