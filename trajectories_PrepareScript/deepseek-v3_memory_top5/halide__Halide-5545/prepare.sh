ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "README.md"
apt-get update && apt-get install -y build-essential cmake ninja-build llvm-dev g++-7
apt-cache policy g++-7
apt-get install -y g++-9
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-9 100 && g++ --version
apt-get install -y llvm-11 llvm-11-dev
llvm-config-11 --version
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-11/cmake ..
apt-get install -y cmake
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-11/cmake ..
apt-get install -y clang-11 libclang-11-dev
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-11/cmake -DClang_DIR=/usr/lib/llvm-11/cmake ..
apt-get install -y lld-11
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-11/cmake -DClang_DIR=/usr/lib/llvm-11/cmake -DLLD_DIR=/usr/lib/llvm-11/cmake ..
apt-cache search lld-11-dev
apt-get install -y liblld-11-dev
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-11/cmake -DClang_DIR=/usr/lib/llvm-11/cmake -DLLD_DIR=/usr/lib/llvm-11/cmake ..
ls /usr/lib/llvm-11/cmake
open "README.md"
cd ..
open "README.md"
make
ln -s /usr/bin/llvm-config-11 /usr/bin/llvm-config
llvm-config --version
make
LLVM_OK=y make
ln -s /usr/bin/clang-11 /usr/bin/clang
clang --version
LLVM_OK=y CLANG_OK=y make
apt-get install -y zlib1g-dev
LLVM_OK=y CLANG_OK=y make
