ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
goto 100
apt-get update && apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build gcc-7 g++-7
apt-cache search gcc- | grep '^gcc-'
cat README.md
apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build gcc-11 g++-11
mkdir -p build && cd build
cmake -DCMAKE_BUILD_TYPE=Release -G Ninja ..
apt-get install -y cmake
cmake -DCMAKE_BUILD_TYPE=Release -G Ninja ..
cmake -DCMAKE_BUILD_TYPE=Release -G Ninja -DCMAKE_CXX_COMPILER=g++-11 ..
apt-get install -y llvm-12-dev
cmake -DCMAKE_BUILD_TYPE=Release -G Ninja -DCMAKE_CXX_COMPILER=g++-11 -DLLVM_DIR=/usr/lib/llvm-12/cmake ..
apt-get install -y clang-12-dev
apt-get install -y clang-12
cmake -DCMAKE_BUILD_TYPE=Release -G Ninja -DCMAKE_CXX_COMPILER=g++-11 -DLLVM_DIR=/usr/lib/llvm-12/cmake -DClang_DIR=/usr/lib/llvm-12/cmake ..
apt-get install --reinstall -y clang-12
ls -la /usr/lib/llvm-12/lib/libclangBasic.a
apt-get install -y libclang-12-dev
ls -la /usr/lib/llvm-12/lib/libclangBasic.a
cmake -DCMAKE_BUILD_TYPE=Release -G Ninja -DCMAKE_CXX_COMPILER=g++-11 -DLLVM_DIR=/usr/lib/llvm-12/cmake -DClang_DIR=/usr/lib/llvm-12/cmake ..
apt-get install -y lld-12
cmake -DCMAKE_BUILD_TYPE=Release -G Ninja -DCMAKE_CXX_COMPILER=g++-11 -DLLVM_DIR=/usr/lib/llvm-12/cmake -DClang_DIR=/usr/lib/llvm-12/cmake -DLLD_DIR=/usr/lib/llvm-12/cmake ..
apt-get install -y lld-12-dev
ls -la /usr/lib/llvm-12/lib/cmake/lld
cmake -DCMAKE_BUILD_TYPE=Release -G Ninja -DCMAKE_CXX_COMPILER=g++-11 -DLLVM_DIR=/usr/lib/llvm-12/cmake -DClang_DIR=/usr/lib/llvm-12/cmake -DLLD_DIR=/usr/lib/llvm-12/lib/cmake ..
cmake -DCMAKE_BUILD_TYPE=Release -G Ninja -DCMAKE_CXX_COMPILER=g++-11 -DLLVM_DIR=/usr/lib/llvm-12/cmake -DClang_DIR=/usr/lib/llvm-12/cmake -DWITH_LLD=OFF ..
open "dependencies/llvm/CMakeLists.txt"
open "CMakeLists.txt"
cd .. && ls -la
open "CMakeLists.txt"
ls -la dependencies
open "dependencies/llvm/CMakeLists.txt"
cd build && cmake -DCMAKE_BUILD_TYPE=Release -G Ninja -DCMAKE_CXX_COMPILER=g++-11 -DLLVM_DIR=/usr/lib/llvm-12/cmake -DClang_DIR=/usr/lib/llvm-12/cmake -DTARGET_WEBASSEMBLY=OFF ..
cmake -DCMAKE_BUILD_TYPE=Release -G Ninja -DCMAKE_CXX_COMPILER=g++-11 -DLLVM_DIR=/usr/lib/llvm-12/cmake -DClang_DIR=/usr/lib/llvm-12/cmake -DTARGET_WEBASSEMBLY=OFF -DWITH_PYTHON_BINDINGS=OFF ..
ninja
ctest
