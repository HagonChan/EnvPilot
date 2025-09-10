ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "README.md"
open "CMakeLists.txt"
apt-get update && apt-get install -y llvm-dev clang g++-7 cmake ninja-build libjpeg-dev libpng-dev doxygen
apt-cache search g++ | grep '^g\+\+'
search_file gcc-7 CMakeLists.txt
apt-get install -y g++-11 clang cmake ninja-build llvm-dev libjpeg-dev libpng-dev doxygen
mkdir -p build && cd build && cmake -G Ninja ..
apt-get install --reinstall -y llvm-14 clang-14 llvm-14-dev clang-14-dev
apt-get install -y libclang-14-dev
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ..
apt-get install -y lld
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ..
apt-get install -y lld-14-dev
find /usr -name "*lld*Config.cmake" -o -name "*lld*-config.cmake"
apt-get install -y wget && wget https://apt.llvm.org/llvm.sh && chmod +x llvm.sh && ./llvm.sh 14
apt-get install -y lsb-release && ./llvm.sh 14
apt-get install -y gnupg software-properties-common && ./llvm.sh 14
apt-get update && ./llvm.sh 14
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ..
find /usr -name "*lld*Config.cmake" -o -name "*lld*-config.cmake"
apt-get install -y lld-14-dev
find /usr/lib/llvm-14 -name "*lld*"
apt-get install -y lldb-14-dev
find /usr/lib/llvm-14 -name "*lld*Config.cmake" -o -name "*lld*-config.cmake"
apt-get install -y lld-14
which lld
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLD_DIR=/usr/bin/lld ..
search_file 'find_package(LLD' CMakeLists.txt
open "../CMakeLists.txt"
open "../dependencies/llvm/CMakeLists.txt"
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DTARGET_WEBASSEMBLY=OFF ..
apt-get install -y python3-dev
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DTARGET_WEBASSEMBLY=OFF ..
ninja
open "../src/runtime/hvx_128.ll"
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DTARGET_WEBASSEMBLY=OFF -DTARGET_HEXAGON=OFF ..
ninja
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DTARGET_WEBASSEMBLY=OFF -DTARGET_HEXAGON=OFF -DTARGET_CUDA=OFF ..
ninja
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DTARGET_WEBASSEMBLY=OFF -DTARGET_HEXAGON=OFF -DENABLE_TSAN=OFF ..
ninja
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DTARGET_WEBASSEMBLY=OFF -DTARGET_HEXAGON=OFF -DTARGET_CUDA=OFF -DTARGET_D3D12COMPUTE=OFF ..
ninja
search_file TARGET_D3D12COMPUTE ../CMakeLists.txt
search_file D3D12COMPUTE ../dependencies/llvm/CMakeLists.txt
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DTARGET_WEBASSEMBLY=OFF -DTARGET_HEXAGON=OFF -DTARGET_CUDA=OFF -DTARGET_D3D12COMPUTE=OFF -DTARGET_OPENGL=OFF -DTARGET_OPENCL=OFF -DTARGET_METAL=OFF ..

