ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "README.md"
open "CMakeLists.txt"
open "python_bindings/requirements.txt"
apt-get update && apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build gcc-7 g++-7 gcc-multilib g++-multilib libjpeg-dev:i386 libpng-dev:i386 gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt coreutils jpeg libpng llvm-11 clang lld clang-tools-extra python3 zlib1g-dev
apt-get update && apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build gcc-11 g++-11 gcc-multilib g++-multilib gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt coreutils llvm-11 clang lld python3 zlib1g-dev
apt-get update && apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build gcc-11 g++-11 llvm-11 clang lld python3 zlib1g-dev
pip install -r python_bindings/requirements.txt
apt-get install -y python3-pip
pip3 install -r python_bindings/requirements.txt
mkdir -p build && cd build && cmake ..
apt-get install -y cmake
cmake ..
apt-get remove -y llvm-14 clang-14 && apt-get install -y llvm-11 clang-11 lld-11 clang-tools-11
cmake ..
apt-get install --reinstall -y llvm-11 clang-11 lld-11 clang-tools-11
ls -la /usr/lib/llvm-11/lib/libclangBasic.a
apt-get install -y libclang-11-dev
ls -la /usr/lib/llvm-11/lib/libclangBasic.a
cmake ..
apt-get install -y lld
apt-get install -y lld-11
find /usr -name "*lld*Config.cmake" -o -name "*lld*-config.cmake"
apt-get install -y lld-11-dev
find /usr -name "*lld*Config.cmake" -o -name "*lld*-config.cmake" 2>/dev/null
cmake -DLLD_INCLUDE_DIR=/usr/include -DLLD_LIBRARY=/usr/lib/llvm-11/lib/liblld-11.so ..
open "CMakeLists.txt"
cd .. && ls -la
open "CMakeLists.txt"
open "dependencies/llvm/CMakeLists.txt"
cd build && cmake -DTARGET_WEBASSEMBLY=OFF ..
cmake -DTARGET_WEBASSEMBLY=OFF ..
make -j$(nproc)
ctest
