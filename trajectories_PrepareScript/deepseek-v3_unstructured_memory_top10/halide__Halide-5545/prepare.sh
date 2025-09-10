ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "README.md"
open "CMakeLists.txt"
apt-get update && apt-get install -y llvm-dev clang clang++ gcc-7 g++-7 cmake ninja-build doxygen libjpeg-dev libpng-dev freeglut3-dev libglu1-mesa-dev mesa-common-dev qemu-user qemu-user-binfmt
add-apt-repository -y ppa:ubuntu-toolchain-r/test && apt-get update
apt-get install -y software-properties-common
add-apt-repository -y ppa:ubuntu-toolchain-r/test && apt-get update
apt-get install -y gcc-7 g++-7
apt-get install -y llvm-dev clang clang++ cmake ninja-build doxygen libjpeg-dev libpng-dev freeglut3-dev libglu1-mesa-dev mesa-common-dev qemu-user qemu-user-binfmt
apt-get clean && apt-get autoremove -y && apt-get install -f
apt-get install -y llvm-dev
apt-get install -y clang clang++ cmake ninja-build doxygen libjpeg-dev libpng-dev freeglut3-dev libglu1-mesa-dev mesa-common-dev qemu-user qemu-user-binfmt
apt-get install -y clang clang++
apt-get install -y clang-14 clang++-14
apt-get install -y cmake ninja-build doxygen libjpeg-dev libpng-dev freeglut3-dev libglu1-mesa-dev mesa-common-dev qemu-user qemu-user-binfmt
mkdir -p build && cd build && cmake ..
cd build && cmake -DCMAKE_CXX_COMPILER=clang++-14 ..
mkdir -p build && cd build && cmake -DCMAKE_CXX_COMPILER=clang++-14 ..
apt-get install -y lld
cd build && cmake -DCMAKE_CXX_COMPILER=clang++-14 ..
mkdir -p build && cd build && cmake -DCMAKE_CXX_COMPILER=clang++-14 ..
cd /testbed && mkdir -p build && cd build && cmake -DCMAKE_CXX_COMPILER=clang++-14 ..
apt-get install -y lld-14-dev
cd /testbed/build && cmake -DCMAKE_CXX_COMPILER=clang++-14 -DLLD_DIR=/usr/lib/llvm-14/lib/cmake/lld ..
apt-get remove -y llvm-14-dev clang-14 lld-14 && apt-get install -y llvm-12-dev clang-12 lld-12
cd /testbed/build && cmake -DCMAKE_CXX_COMPILER=clang++-12 -DLLD_DIR=/usr/lib/llvm-12/lib/cmake/lld ..
cd /testbed/build && CXX=/usr/bin/clang++-12 cmake -DLLD_DIR=/usr/lib/llvm-12/lib/cmake/lld ..
apt-get install --reinstall -y llvm-12-dev clang-12 lld-12
cd /testbed/build && CXX=/usr/bin/clang++-12 cmake -DLLD_DIR=/usr/lib/llvm-12/lib/cmake/lld ..
wget https://apt.llvm.org/llvm.sh && chmod +x llvm.sh && ./llvm.sh 12
apt-get install -y wget
wget https://apt.llvm.org/llvm.sh && chmod +x llvm.sh && ./llvm.sh 12
apt-get remove -y llvm-12-dev clang-12 lld-12 && apt-get install -y llvm-dev clang lld
cd /testbed/build && CXX=/usr/bin/clang++ cmake -DLLD_DIR=/usr/lib/llvm-14/lib/cmake/lld ..
cd /testbed/build && CXX=/usr/bin/clang++-14 cmake -DLLD_DIR=/usr/lib/llvm-14/lib/cmake/lld ..
cd /testbed/build && rm -rf * && CXX=/usr/bin/clang++-14 cmake -DLLD_DIR=/usr/lib/llvm-14/lib/cmake/lld ..
cd /testbed/build && rm -rf * && CXX=/usr/bin/clang++-14 cmake -DLLD_DIR=/usr/lib/llvm-14/lib/cmake/lld -DCMAKE_BUILD_TYPE=Release ..
apt-get remove -y llvm-14-dev clang-14 lld-14 && apt-get install -y llvm-12-dev clang-12 lld-12
cd /testbed/build && rm -rf * && CXX=/usr/bin/clang++-12 cmake -DLLD_DIR=/usr/lib/llvm-12/lib/cmake/lld -DCMAKE_BUILD_TYPE=Release ..
wget https://apt.llvm.org/llvm.sh && chmod +x llvm.sh && ./llvm.sh 12
find /usr -name "libclangBasic.a" 2>/dev/null
ln -s /usr/lib/llvm-14/lib/libclangBasic.a /usr/lib/llvm-12/lib/libclangBasic.a
cd /testbed/build && rm -rf * && CXX=/usr/bin/clang++-12 cmake -DLLD_DIR=/usr/lib/llvm-12/lib/cmake/lld -DCMAKE_BUILD_TYPE=Release ..
rm /usr/lib/llvm-12/lib/libclangBasic.a && apt-get install -y llvm-14-dev clang-14 lld-14
cd /testbed/build && rm -rf * && CXX=/usr/bin/clang++-14 cmake -DLLD_DIR=/usr/lib/llvm-14/lib/cmake/lld -DCMAKE_BUILD_TYPE=Release ..
cd /testbed/build && rm -rf * && CXX=/usr/bin/clang++-14 cmake -DLLD_DIR=/usr/lib/llvm-14/lib/cmake/lld -DCMAKE_BUILD_TYPE=Release ..
apt-get remove -y llvm-14-dev clang-14 lld-14 && apt-get install -y llvm-12-dev clang-12 lld-12

