ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "README.md"
apt-get update && apt-get install -y build-essential cmake ninja-build llvm-dev clang g++-7 libjpeg-dev libpng-dev freeglut3-dev libglu1-mesa-dev mesa-common-dev
apt-get install -y g++-11 && update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 100
g++ --version && cmake --version && ninja --version
apt-get install -y cmake
cmake --version && ninja --version
apt-get install -y ninja-build
g++ --version && cmake --version && ninja --version
apt-get install -y libjpeg-dev libpng-dev freeglut3-dev libglu1-mesa-dev mesa-common-dev
apt-get install -y llvm-12
llvm-config-12 --version
export LLVM_CONFIG=/usr/bin/llvm-config-12
mkdir -p build && cd build && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ..
apt-get install -y clang-12
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ..
apt-get install --reinstall -y libclang-12-dev
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ..
apt-get install -y lld-12
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ..
apt-get install -y lld-12-dev
find /usr -name "*lld-config.cmake*" -o -name "*LLDConfig.cmake*"
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DWITH_AMDGPU=OFF -DWITH_HEXAGON=OFF -DWITH_NVPTX=OFF -DWITH_POWERPC=OFF -DWITH_RISCV=OFF -DWITH_WEBASSEMBLY=OFF ..
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DWITH_AMDGPU=OFF -DWITH_HEXAGON=OFF -DWITH_NVPTX=OFF -DWITH_POWERPC=OFF -DWITH_RISCV=OFF -DWITH_WEBASSEMBLY=OFF -DWITH_AARCH64=OFF -DWITH_ARM=OFF -DWITH_MIPS=OFF ..
wget https://raw.githubusercontent.com/llvm/llvm-project/main/lld/cmake/modules/LLDConfig.cmake -O /usr/lib/llvm-12/lib/cmake/lld/LLDConfig.cmake
apt-get install -y wget
wget https://raw.githubusercontent.com/llvm/llvm-project/main/lld/cmake/modules/LLDConfig.cmake -O /usr/lib/llvm-12/lib/cmake/lld/LLDConfig.cmake
mkdir -p /usr/lib/llvm-12/lib/cmake/lld/ && wget https://raw.githubusercontent.com/llvm/llvm-project/main/lld/cmake/modules/LLDConfig.cmake -O /usr/lib/llvm-12/lib/cmake/lld/LLDConfig.cmake
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DWITH_AMDGPU=OFF -DWITH_HEXAGON=OFF -DWITH_NVPTX=OFF -DWITH_POWERPC=OFF -DWITH_RISCV=OFF -DWITH_WEBASSEMBLY=OFF -DWITH_AARCH64=OFF -DWITH_ARM=OFF -DWITH_MIPS=OFF -DWITH_X86=ON ..
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DWITH_AMDGPU=OFF -DWITH_HEXAGON=OFF -DWITH_NVPTX=OFF -DWITH_POWERPC=OFF -DWITH_RISCV=OFF -DWITH_WEBASSEMBLY=OFF -DWITH_AARCH64=OFF -DWITH_ARM=OFF -DWITH_MIPS=OFF -DWITH_X86=OFF ..
open "dependencies/llvm/CMakeLists.txt"
mkdir -p /tmp/dummy-lld && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLD_DIR=/tmp/dummy-lld ..
open "CMakeLists.txt"
open "build/CMakeLists.txt"
open "dependencies/CMakeLists.txt"
open "src/CMakeLists.txt"
open "test/CMakeLists.txt"
open "tools/CMakeLists.txt"
open "include/CMakeLists.txt"
open "lib/CMakeLists.txt"
open "bin/CMakeLists.txt"
open "scripts/CMakeLists.txt"
open "examples/CMakeLists.txt"
open "apps/CMakeLists.txt"
open "third_party/CMakeLists.txt"
open "docs/CMakeLists.txt"
open "utils/CMakeLists.txt"

