ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
goto 200
goto 400
sudo apt-get update && sudo apt-get install -y gcc-7 g++-7 libjpeg-dev libpng-dev
apt-get update && apt-get install -y gcc-7 g++-7 libjpeg-dev libpng-dev
gcc --version && g++ --version
apt-get install -y gcc g++
gcc --version && g++ --version
apt-get install -y libjpeg-dev libpng-dev
cmake --version
apt-get install -y cmake
cmake --version
mkdir -p build && cd build && cmake ..
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && echo "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-12 main" >> /etc/apt/sources.list && apt-get update && apt-get install -y llvm-12 llvm-12-dev clang-12
apt-get install -y wget gnupg
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && echo "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-12 main" >> /etc/apt/sources.list && apt-get update && apt-get install -y llvm-12 llvm-12-dev clang-12
apt-cache search llvm | grep '^llvm-'
apt-get install -y llvm-12 llvm-12-dev clang-12
llvm-config --version && clang-12 --version
find /usr -name llvm-config
export PATH=/usr/lib/llvm-12/bin:$PATH && llvm-config --version && clang-12 --version
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-12/lib/cmake/llvm -DHALIDE_SHARED_LIBRARY=ON ..
apt-get install --reinstall -y llvm-12 llvm-12-dev clang-12
ls /usr/lib/llvm-12/lib/libclangBasic.a
apt-cache search clang-12
apt-get install -y libclang-12-dev
ls /usr/lib/llvm-12/lib/libclangBasic.a
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-12/lib/cmake/llvm -DHALIDE_SHARED_LIBRARY=ON ..
apt-get install -y lld-12
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-12/lib/cmake/llvm -DHALIDE_SHARED_LIBRARY=ON ..
apt-get install -y lld-12-dev
find /usr -name "*lld*config.cmake"
apt-get install -y llvm-13 llvm-13-dev clang-13 lld-13
find /usr -name "*lld*config.cmake"
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-13/lib/cmake/llvm -DHALIDE_SHARED_LIBRARY=ON -DLLD_DIR=/usr/lib/llvm-13/lib/cmake/lld ..
wget https://github.com/llvm/llvm-project/releases/download/llvmorg-12.0.1/llvm-project-12.0.1.src.tar.xz && tar -xf llvm-project-12.0.1.src.tar.xz
apt-get install -y xz-utils
tar -xf llvm-project-12.0.1.src.tar.xz
cd llvm-project-12.0.1.src && mkdir -p build && cd build
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_PROJECTS="clang;lld" -DLLVM_TARGETS_TO_BUILD="X86;AArch64;ARM" -DLLVM_INCLUDE_TESTS=OFF ../llvm
make -j$(nproc)
make install
/usr/local/bin/llvm-config --version
cd /testbed
mkdir -p build && cd build && cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/local/lib/cmake/llvm -DHALIDE_SHARED_LIBRARY=ON ..
ls /usr/local/lib/cmake/clang
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/local/lib/cmake/llvm -DClang_DIR=/usr/local/lib/cmake/clang -DHALIDE_SHARED_LIBRARY=ON ..

