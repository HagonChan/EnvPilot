ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "README.md"
apt-get update && apt-get install -y gcc-7 g++-7 cmake ninja-build llvm-dev clang lld clang-tools-extra libjpeg-dev libpng-dev freeglut3-dev libglu1-mesa-dev mesa-common-dev doxygen
apt-get update && apt-get install -y gcc-9 g++-9 cmake ninja-build llvm-dev clang lld libjpeg-dev libpng-dev freeglut3-dev libglu1-mesa-dev mesa-common-dev doxygen
gcc-9 --version && g++-9 --version && clang --version
llvm-config --version
mkdir -p build && cd build
cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON ..
apt-get install --reinstall llvm-14 clang-14 lld-14 llvm-14-dev clang-14-dev
apt-get install --reinstall llvm-14 clang-14 lld-14 llvm-14-dev
cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON ..
apt-get install -y llvm-12 clang-12 lld-12 llvm-12-dev
cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON -DLLVM_DIR=/usr/lib/llvm-12/cmake ..
export LLVM_CONFIG=/usr/lib/llvm-12/bin/llvm-config && cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON -DLLVM_DIR=/usr/lib/llvm-12/cmake ..
apt-get remove -y llvm-14 clang-14 lld-14 llvm-14-dev
rm -rf * && cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON -DLLVM_DIR=/usr/lib/llvm-12/cmake ..
apt-get install --reinstall llvm-12 clang-12 lld-12 llvm-12-dev
rm -rf * && cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON -DLLVM_DIR=/usr/lib/llvm-12/cmake ..
ls -la /usr/lib/llvm-12/lib/
apt-get install -y libclang-12-dev
ls -la /usr/lib/llvm-12/lib/libclangBasic.a
rm -rf * && cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON -DLLVM_DIR=/usr/lib/llvm-12/cmake ..
export LLD_DIR=/usr/lib/llvm-12/cmake && cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON -DLLVM_DIR=/usr/lib/llvm-12/cmake ..
ls -la /usr/lib/llvm-12/cmake/
rm -rf * && cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON -DLLVM_DIR=/usr/lib/llvm-12/cmake -DENABLE_LLD=OFF ..
apt-get install -y llvm-14 clang-14 lld-14 llvm-14-dev libclang-14-dev
rm -rf * && cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON -DLLVM_DIR=/usr/lib/llvm-14/cmake ..
ls -la /usr/lib/llvm-14/cmake/
rm -rf * && cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON -DLLVM_DIR=/usr/lib/llvm-14/cmake -DENABLE_LLD=OFF ..
apt-get install --reinstall llvm-12 clang-12 lld-12 llvm-12-dev libclang-12-dev
rm -rf * && cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON -DLLVM_DIR=/usr/lib/llvm-12/cmake -DENABLE_LLD=OFF ..
ls -la /usr/lib/llvm-12/cmake/
rm -rf * && cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON -DLLVM_DIR=/usr/lib/llvm-12/cmake -DENABLE_LLD=OFF ..
apt-get install -y llvm-14 clang-14 lld-14 llvm-14-dev libclang-14-dev
rm -rf * && cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON -DLLVM_DIR=/usr/lib/llvm-14/cmake -DENABLE_LLD=OFF ..
ls -la /usr/lib/llvm-14/cmake/
rm -rf * && cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON -DLLVM_DIR=/usr/lib/llvm-14/cmake -DENABLE_LLD=OFF ..
apt-get install --reinstall llvm-12 clang-12 lld-12 llvm-12-dev libclang-12-dev
rm -rf * && cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON -DLLVM_DIR=/usr/lib/llvm-12/cmake -DENABLE_LLD=OFF ..
ls -la /usr/lib/llvm-12/cmake/
rm -rf * && cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON -DLLVM_DIR=/usr/lib/llvm-12/cmake -DENABLE_LLD=OFF ..
apt-get install -y llvm-14 clang-14 lld-14 llvm-14-dev libclang-14-dev
rm -rf * && cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON -DLLVM_DIR=/usr/lib/llvm-14/cmake -DENABLE_LLD=OFF ..
ls -la /usr/lib/llvm-14/cmake/
rm -rf * && cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON -DLLVM_DIR=/usr/lib/llvm-14/cmake -DENABLE_LLD=OFF ..
apt-get install --reinstall llvm-12 clang-12 lld-12 llvm-12-dev libclang-12-dev
rm -rf * && cmake -DCMAKE_CXX_COMPILER=g++-9 -DCMAKE_C_COMPILER=gcc-9 -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON -DLLVM_DIR=/usr/lib/llvm-12/cmake -DENABLE_LLD=OFF ..

