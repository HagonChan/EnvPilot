ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "README.md"
apt-get update && apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build freeglut3-dev libglu1-mesa-dev mesa-common-dev gcc-7 g++-7 gcc-multilib g++-multilib gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt coreutils jpeg libpng libjpeg-turbo zlib git curl wget build-essential python3 python3-dev python3-pip
apt-get update && apt-get install -y doxygen ninja-build freeglut3-dev libglu1-mesa-dev mesa-common-dev gcc-multilib g++-multilib gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt coreutils git curl wget build-essential python3 python3-dev python3-pip
apt-get update && apt-get install -y doxygen ninja-build freeglut3-dev libglu1-mesa-dev mesa-common-dev gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt coreutils git curl wget build-essential python3 python3-dev python3-pip
apt-get install -y llvm-12
ls python_bindings/requirements.txt
pip install -r python_bindings/requirements.txt
mkdir -p build && cd build && cmake ..
apt-get install -y cmake
cmake ..
apt-get install -y llvm-12-dev clang-12
cmake ..
apt-get install --reinstall -y llvm-12 clang-12 llvm-12-dev clang-12-dev
apt-get install --reinstall -y llvm-12 clang-12 llvm-12-dev
cmake -DCMAKE_BUILD_TYPE=Release ..
find /usr -name "libclangBasic.a" -type f
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && echo "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-12 main" >> /etc/apt/sources.list && apt-get update && apt-get install -y llvm-12 clang-12 llvm-12-dev clang-12-dev
apt-get install -y llvm-13 clang-13 llvm-13-dev clang-13-dev
apt-get install -y llvm-14 clang-14 llvm-14-dev clang-14-dev
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-12/lib/cmake/llvm ..
