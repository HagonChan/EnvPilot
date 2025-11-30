ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/test.yml"
open ".github/workflows/llvm_builder.yml"
apt-get update && apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build freeglut3-dev libglu1-mesa-dev mesa-common-dev gcc-7 g++-7 gcc-multilib g++-multilib gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt coreutils jpeg libpng libjpeg-turbo zlib build-essential python3 python3-dev python3-pip
apt-get update && apt-get install -y build-essential doxygen libjpeg-dev libpng-dev ninja-build freeglut3-dev libglu1-mesa-dev mesa-common-dev gcc-multilib g++-multilib gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt coreutils python3 python3-dev python3-pip
apt-get remove -y gcc-multilib gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu && apt-get install -y build-essential doxygen libjpeg-dev libpng-dev ninja-build freeglut3-dev libglu1-mesa-dev mesa-common-dev python3 python3-dev python3-pip
pip install -r python_bindings/requirements.txt
ctest
cmake .
apt-get install -y cmake
cmake .
apt-get install -y llvm
cmake .
apt-get install -y clang
cmake .
apt-get install -y llvm-14-dev clang-14
ls /usr/lib/llvm-14/lib/
apt-get install --reinstall llvm-14 clang-14
cmake .
apt-get install -y llvm-15 clang-15
cmake .
cmake -DCMAKE_PREFIX_PATH=/usr/lib/llvm-15/lib/cmake/llvm .
apt-get remove --purge llvm-14 clang-14
apt-get remove llvm-14 clang-14
dpkg --remove --force-remove-reinstreq llvm-14 clang-14
apt-get install -y llvm-15 clang-15
cmake -DCMAKE_PREFIX_PATH=/usr/lib/llvm-15/lib/cmake/llvm -DCMAKE_BUILD_TYPE=Release .
rm -rf CMakeCache.txt CMakeFiles/
cmake -DCMAKE_PREFIX_PATH=/usr/lib/llvm-15/lib/cmake/llvm -DCMAKE_BUILD_TYPE=Release .
apt-get install -y software-properties-common && add-apt-repository -y ppa:llvm/llvm-toolchain-22 && apt-get update && apt-get install -y llvm clang
apt-get install -y llvm clang
apt-get install -y llvm-15 clang-15
find /usr/lib/ -name "libclangBasic.a"
wget https://github.com/llvm/llvm-project/releases/download/llvmorg-15.0.0/llvm-15.0.0-linux-x86_64.tar.xz && tar -xf llvm-15.0.0-linux-x86_64.tar.xz -C /usr/local --strip-components=1
curl -LO https://github.com/llvm/llvm-project/releases/download/llvmorg-15.0.0/llvm-15.0.0-linux-x86_64.tar.xz && tar -xf llvm-15.0.0-linux-x86_64.tar.xz -C /usr/local --strip-components=1
apt-get install -y build-essential
apt-get install -y llvm-15 clang-15
cmake -DCMAKE_BUILD_TYPE=Release .
apt-get install -y software-properties-common && add-apt-repository -y ppa:llvm/llvm-toolchain-15 && apt-get update && apt-get install -y llvm-15 clang-15
apt-get install -y llvm-15 clang-15
cmake -DCMAKE_BUILD_TYPE=Release .
apt-get install -y software-properties-common && add-apt-repository -y ppa:llvm/llvm-toolchain-15 && apt-get update && apt-get install -y llvm-15 clang-15
apt-get install -y llvm-15 clang-15
cmake -DCMAKE_BUILD_TYPE=Release .
apt-get install -y software-properties-common && add-apt-repository -y ppa:llvm/llvm-toolchain-15 && apt-get update && apt-get install -y llvm-15 clang-15
apt-get install -y llvm-15 clang-15
cmake -DCMAKE_BUILD_TYPE=Release .

