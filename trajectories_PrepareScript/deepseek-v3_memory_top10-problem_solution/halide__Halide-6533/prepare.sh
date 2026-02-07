ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "README.md"
open "CMakeLists.txt"
sudo apt-get update && sudo apt-get install -y gcc-7 g++-7 cmake ninja-build llvm-12 clang lld clang-tools-extra doxygen libjpeg-dev libpng-dev gcc-multilib g++-multilib libjpeg-dev:i386 libpng-dev:i386 gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt coreutils jpeg libpng zlib1g-dev python3
apt-get update && apt-get install -y gcc-7 g++-7 cmake ninja-build llvm-12 clang lld clang-tools-extra doxygen libjpeg-dev libpng-dev gcc-multilib g++-multilib libjpeg-dev:i386 libpng-dev:i386 gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt coreutils jpeg libpng zlib1g-dev python3
add-apt-repository -y ppa:ubuntu-toolchain-r/test && apt-get update && apt-get install -y gcc-7 g++-7
echo "deb http://archive.ubuntu.com/ubuntu bionic main universe" > /etc/apt/sources.list.d/bionic.list && apt-get update && apt-get install -y gcc-7 g++-7
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3B4FE6ACC0B21F32 && apt-get update && apt-get install -y gcc-7 g++-7
apt-get install -y gnupg && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3B4FE6ACC0B21F32 && apt-get update && apt-get install -y gcc-7 g++-7
apt-cache search gcc | grep '^gcc-'
apt-get install -y gcc-11 g++-11
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 110 --slave /usr/bin/g++ g++ /usr/bin/g++-11
apt-get install -y cmake ninja-build llvm-12 clang lld clang-tools-extra doxygen libjpeg-dev libpng-dev gcc-multilib g++-multilib gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt coreutils jpeg libpng zlib1g-dev python3
apt-get install -y cmake ninja-build llvm-12 clang lld doxygen libjpeg-dev libpng-dev gcc-multilib g++-multilib gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt coreutils zlib1g-dev python3
apt-get install -y cmake ninja-build llvm-12 clang lld doxygen libjpeg-dev libpng-dev gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt zlib1g-dev python3
ls python_bindings/
pip install -r python_bindings/requirements.txt
apt-get install -y python3-pip
python3 -m pip install -r python_bindings/requirements.txt
mkdir -p build && cd build && cmake -G Ninja ..
apt-get install --reinstall -y llvm-12 clang-12 lld-12 clang-tools-12
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-12/lib/cmake/llvm ..
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-12/lib/cmake/llvm -DClang_DIR=/usr/lib/llvm-12/lib/cmake/clang ..
ls /usr/lib/llvm-12/lib/
apt-get install -y libclang-12-dev
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-12/lib/cmake/llvm -DClang_DIR=/usr/lib/llvm-12/lib/cmake/clang ..
ls /usr/lib/llvm-12/lib/cmake/lld
apt-get install -y lld-12-dev
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-12/lib/cmake/llvm -DClang_DIR=/usr/lib/llvm-12/lib/cmake/clang -DLLD_DIR=/usr/lib/llvm-12/lib/cmake/lld ..
find /usr -name "*lld*Config.cmake" -o -name "*lld*-config.cmake"
open "/testbed/CMakeLists.txt"
open "/testbed/dependencies/llvm/CMakeLists.txt"
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-12/lib/cmake/llvm -DClang_DIR=/usr/lib/llvm-12/lib/cmake/clang -DTARGET_WEBASSEMBLY=OFF ..
ninja
ctest
cat /testbed/build/Testing/Temporary/LastTest.log
