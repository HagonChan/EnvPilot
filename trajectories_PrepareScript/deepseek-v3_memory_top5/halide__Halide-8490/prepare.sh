ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
open "README.md"
search_file '#building-halide' README.md
search_file 'Building Halide' README.md
goto 115
apt-get update && apt-get install -y build-essential cmake ninja-build llvm-dev clang lld clang-tools-extra compiler-rt libc++-dev libstdc++-dev
apt-get update && apt-get install -y build-essential cmake ninja-build llvm-dev clang lld libstdc++-12-dev libc++-dev
cmake --version && ninja --version && clang --version && llvm-config --version
git clone --depth 1 --branch llvmorg-18.1.8 https://github.com/llvm/llvm-project.git
cmake -G Ninja -S llvm-project/llvm -B build -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_PROJECTS="clang;lld;clang-tools-extra" -DLLVM_ENABLE_RUNTIMES=compiler-rt -DLLVM_TARGETS_TO_BUILD="WebAssembly;X86;AArch64;ARM;Hexagon;NVPTX;PowerPC;RISCV" -DLLVM_ENABLE_ASSERTIONS=ON -DLLVM_ENABLE_EH=ON -DLLVM_ENABLE_RTTI=ON -DLLVM_ENABLE_HTTPLIB=OFF -DLLVM_ENABLE_LIBEDIT=OFF -DLLVM_ENABLE_LIBXML2=OFF -DLLVM_ENABLE_TERMINFO=OFF -DLLVM_ENABLE_ZLIB=OFF -DLLVM_ENABLE_ZSTD=OFF -DLLVM_BUILD_32_BITS=OFF
cd build && ninja
cd build && ninja install
ninja install
llvm-config --version
find /usr/local -name llvm-config
/usr/local/bin/llvm-config --version
export PATH=/usr/local/bin:$PATH
which llvm-config && llvm-config --version
cd /testbed
mkdir build && cd build && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/local/lib/cmake/llvm ..
rm -rf build && mkdir build && cd build && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/local/lib/cmake/llvm ..
apt-get remove -y cmake
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ focal main' | tee /etc/apt/sources.list.d/kitware.list >/dev/null && apt-get update && apt-get install -y cmake
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz && tar -xzf cmake-3.28.0-linux-x86_64.tar.gz && mv cmake-3.28.0-linux-x86_64 /opt/cmake && ln -s /opt/cmake/bin/cmake /usr/local/bin/cmake
apt-get install -y wget
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz && tar -xzf cmake-3.28.0-linux-x86_64.tar.gz && mv cmake-3.28.0-linux-x86_64 /opt/cmake && ln -s /opt/cmake/bin/cmake /usr/local/bin/cmake
tar -xzf cmake-3.28.0-linux-x86_64.tar.gz && mv cmake-3.28.0-linux-x86_64 /opt/cmake && ln -s /opt/cmake/bin/cmake /usr/local/bin/cmake
rm /usr/local/bin/cmake && ln -s /opt/cmake/bin/cmake /usr/local/bin/cmake
cmake --version
export PATH=/opt/cmake/bin:$PATH && cmake --version
cd /testbed && rm -rf build && mkdir build && cd build && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/local/lib/cmake/llvm ..
apt-get install -y python3-dev
cd /testbed && rm -rf build && mkdir build && cd build && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/local/lib/cmake/llvm ..
ninja
ctest --output-on-failure
