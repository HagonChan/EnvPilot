ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "python_bindings/requirements.txt"
open "README.md"
open "CMakeLists.txt"
apt-get update && apt-get install -y build-essential cmake ninja-build gcc-7 g++-7 llvm clang python3 python3-pip libjpeg-dev libpng-dev doxygen
apt-cache search gcc-9 gcc-10
apt-get install -y gcc g++
apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build coreutils jpeg libpng gcc-multilib g++-multilib libjpeg-dev:i386 libpng-dev:i386 gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt llvm clang python3 git curl tar build-essential
apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build coreutils gcc-multilib g++-multilib gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt llvm clang python3 git curl tar build-essential
apt-get install -y gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu
apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build llvm clang python3 git curl build-essential
pip install -r python_bindings/requirements.txt
apt-get install -y python3-pip
python3 -m pip install -r python_bindings/requirements.txt
mkdir -p build && cd build && cmake -GNinja ..
apt-get install -y cmake
cd build && cmake -GNinja ..
mkdir -p build && cd build && cmake -GNinja ..
cd build && cmake -GNinja ..
mkdir -p build && cd build && cmake -GNinja ..
mkdir -p build
cd build && cmake -GNinja ..
cd /testbed && mkdir -p build && cd build && cmake -GNinja ..
apt-get install --reinstall -y llvm-14 clang-14
cd build && cmake -GNinja ..
ls -la /usr/lib/llvm-14/lib/ | grep libclangBasic.a
apt-file search libclangBasic.a
apt-get install -y apt-file
apt-file update
apt-file search libclangBasic.a
apt-get install --reinstall -y libclang-14-dev
ls -la /usr/lib/llvm-14/lib/ | grep libclangBasic.a
cd build && cmake -GNinja ..
cd /testbed && mkdir -p build && cd build && cmake -GNinja ..
apt-get install -y lld-14
cd build && cmake -GNinja ..
find /usr -name "*LLDConfig.cmake" -o -name "*lld-config.cmake" 2>/dev/null
apt-get install -y lld-14-dev
export LLD_DIR=/usr/lib/llvm-14/lib/cmake/lld && cd build && cmake -GNinja ..
cd /testbed && rm -rf build && mkdir -p build && cd build && export LLD_DIR=/usr/lib/llvm-14/lib/cmake/lld && cmake -GNinja ..
find /usr -name "*LLD*Config.cmake" -o -name "*lld*config.cmake" 2>/dev/null
open "CMakeLists.txt"
cd /testbed
open "CMakeLists.txt"
open "dependencies/llvm/CMakeLists.txt"
cd build && cmake -GNinja -DTARGET_WEBASSEMBLY=OFF ..
cd build && ninja

