ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/pip.yml"
open ".github/workflows/presubmit.yml"
open "README.md"
apt-get update && apt-get install -y clang cmake make ninja-build build-essential
apt-get install -y llvm clang lld clang-tools-extra compiler-rt gcc g++ python3 python3-dev git libc++-dev libstdc++-dev
apt-get update
apt-get install -y llvm clang lld gcc g++ python3 python3-dev git libc++-dev libstdc++-11-dev
scroll_down
git clone --depth 1 --branch llvmorg-18.1.8 https://github.com/llvm/llvm-project.git
mkdir llvm-build && cd llvm-build && cmake -G Ninja -S ../llvm-project/llvm -B . -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_PROJECTS="clang;lld;clang-tools-extra" -DLLVM_ENABLE_RUNTIMES=compiler-rt -DLLVM_TARGETS_TO_BUILD="WebAssembly;X86;AArch64;ARM;Hexagon;NVPTX;PowerPC;RISCV" -DLLVM_ENABLE_ASSERTIONS=ON -DLLVM_ENABLE_EH=ON -DLLVM_ENABLE_RTTI=ON -DLLVM_ENABLE_HTTPLIB=OFF -DLLVM_ENABLE_LIBEDIT=OFF -DLLVM_ENABLE_LIBXML2=OFF -DLLVM_ENABLE_TERMINFO=OFF -DLLVM_ENABLE_ZLIB=OFF -DLLVM_ENABLE_ZSTD=OFF -DLLVM_BUILD_32_BITS=OFF
cmake --build . --config Release
cmake --install . --prefix llvm-install
ctest
scroll_down
scroll_down
ctest --test-dir build --output-on-failure
mkdir build && cd build && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DHalide_LLVM_ROOT=../llvm-install ..
cmake --build . --config Release
rm -rf build && mkdir build && cd build && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DHalide_LLVM_ROOT=../llvm-install ..
cd .. && rm -rf build && mkdir build && cd build && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DHalide_LLVM_ROOT=../llvm-install ..
cd /testbed && rm -rf llvm-build/build && mkdir llvm-build/build && cd llvm-build/build && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DHalide_LLVM_ROOT=../llvm-install ..
cmake --build . --config Release
cd .. && rm -rf build && mkdir build && cd build && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DHalide_LLVM_ROOT=../llvm-install ..
cmake --build . --config Release
rm -rf llvm-build
git clone https://github.com/halide/Halide.git
mkdir llvm-build && cd llvm-build && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DHalide_LLVM_ROOT=../llvm-install ..
cd /testbed && mkdir llvm-build && cd llvm-build && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DHalide_LLVM_ROOT=../llvm-install ../Halide
cd llvm-build && rm -rf * && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DHalide_LLVM_ROOT=../llvm-install ../Halide
cd .. && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DHalide_LLVM_ROOT=../llvm-install Halide
ls -la
cd llvm-build && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DHalide_LLVM_ROOT=../llvm-install ../
apt-get remove -y cmake && apt-get install -y cmake
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-Linux-x86_64.sh && chmod +x cmake-3.28.0-Linux-x86_64.sh && ./cmake-3.28.0-Linux-x86_64.sh --skip-license --prefix=/usr/local
curl -LO https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-Linux-x86_64.sh && chmod +x cmake-3.28.0-Linux-x86_64.sh && ./cmake-3.28.0-Linux-x86_64.sh --skip-license --prefix=/usr/local
apt-get update && apt-get install -y software-properties-common && add-apt-repository ppa:kitware/ppa && apt-get update && apt-get install -y cmake
apt-get install -y cmake
apt-get install -y build-essential && git clone https://github.com/Kitware/CMake.git && cd CMake && git checkout v3.28.0 && ./bootstrap && make && make install
apt-get install -y libssl-dev
cd CMake && ./bootstrap && make && make install
git clone https://github.com/Kitware/CMake.git && cd CMake && git checkout v3.28.0 && ./bootstrap && make && make install
cd /testbed/llvm-build && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DHalide_LLVM_ROOT=../llvm-install ../Halide
cmake --version
apt-get remove --purge cmake
rm -rf /usr/local/share/cmake-3.22 && rm -rf /usr/local/bin/cmake
git clone https://github.com/Kitware/CMake.git && cd CMake && git checkout v3.28.0 && ./bootstrap && make && make install

