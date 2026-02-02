ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "README.md"
open "CMakeLists.txt"
open "python_bindings/requirements.txt"
apt-get update && apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build coreutils jpeg libpng gcc-7 g++-7 gcc-multilib g++-multilib libjpeg-dev:i386 libpng-dev:i386 gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt llvm clang python3 git curl tar build-essential
add-apt-repository -y ppa:ubuntu-toolchain-r/test && apt-get update
apt-get install -y software-properties-common
add-apt-repository -y ppa:ubuntu-toolchain-r/test && apt-get update
apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build coreutils jpeg libpng gcc-7 g++-7 gcc-multilib g++-multilib libjpeg-dev:i386 libpng-dev:i386 gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt llvm clang python3 git curl tar build-essential
apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build coreutils gcc-multilib g++-multilib gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt llvm clang python3 git curl tar build-essential
apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build coreutils gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt llvm clang python3 git curl tar build-essential
pip install -r python_bindings/requirements.txt
apt-get install -y python3-pip
pip install -r python_bindings/requirements.txt
mkdir -p build && cd build && cmake ..
apt-get install -y cmake
cd build && cmake ..
mkdir -p build && cd build && cmake ..
cd /testbed && mkdir -p build && cd build && cmake ..
apt-get install --reinstall -y llvm clang
cd /testbed && mkdir -p build && cd build && cmake ..
apt-cache search llvm | grep '^llvm-'
apt-get install -y llvm-13 clang-13
cd /testbed && mkdir -p build && cd build && cmake ..
open "CMakeLists.txt"
cd /testbed
open "CMakeLists.txt"
open "dependencies/llvm/CMakeLists.txt"
ls /usr/lib/llvm-13/lib/libclangBasic.a
apt-get install --reinstall -y clang-13
ls /usr/lib/llvm-13/lib/libclangBasic.a
apt-get install -y libclang-13-dev
ls /usr/lib/llvm-13/lib/libclangBasic.a
cd /testbed && mkdir -p build && cd build && cmake ..
open "dependencies/llvm/CMakeLists.txt"
ls -la dependencies/llvm
open "CMakeLists.txt"
cd /testbed
open "CMakeLists.txt"
open "dependencies/CMakeLists.txt"
open "dependencies/llvm/CMakeLists.txt"
ls /usr/lib/llvm-13/lib/libclangBasic.a
edit 'find_package(LLVM ${Halide_REQUIRE_LLVM_VERSION} REQUIRED)' 'find_package(LLVM 13.0.0 REQUIRED)' True
cd /testbed && mkdir -p build && cd build && cmake ..
rm -rf /usr/lib/llvm-14/lib/cmake/clang
cd /testbed && mkdir -p build && cd build && cmake ..
apt-get install -y lld

