ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
scroll_down
scroll_down
scroll_down
scroll_down
sudo apt-get update && sudo apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build
apt-get update && apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build
export LLVM_INSTALL_DIR="$PWD/llvm" && export HALIDE_SOURCE_DIR="$PWD/halide" && export HALIDE_BUILD_DIR="$PWD/halide_build" && export HALIDE_TEMP_DIR="$(mktemp -d)" && mkdir -p "$LLVM_INSTALL_DIR" "$HALIDE_BUILD_DIR"
wget -O llvm-prebuilt.tgz https://github.com/llvm/llvm-project/releases/download/llvmorg-12.0.0/clang+llvm-12.0.0-x86_64-linux-gnu-ubuntu-20.04.tar.xz && tar -xf llvm-prebuilt.tgz -C "$LLVM_INSTALL_DIR" --strip-components=1 && rm llvm-prebuilt.tgz
curl -L -o llvm-prebuilt.tgz https://github.com/llvm/llvm-project/releases/download/llvmorg-12.0.0/clang+llvm-12.0.0-x86_64-linux-gnu-ubuntu-20.04.tar.xz && tar -xf llvm-prebuilt.tgz -C "$LLVM_INSTALL_DIR" --strip-components=1 && rm llvm-prebuilt.tgz
apt-get install -y curl
curl -L -o llvm-prebuilt.tgz https://github.com/llvm/llvm-project/releases/download/llvmorg-12.0.0/clang+llvm-12.0.0-x86_64-linux-gnu-ubuntu-20.04.tar.xz && tar -xf llvm-prebuilt.tgz -C "$LLVM_INSTALL_DIR" --strip-components=1 && rm llvm-prebuilt.tgz
apt-get install -y xz-utils
tar -xf llvm-prebuilt.tgz -C "$LLVM_INSTALL_DIR" --strip-components=1 && rm llvm-prebuilt.tgz
"$LLVM_INSTALL_DIR/bin/clang" --version
cmake -S "$HALIDE_SOURCE_DIR" -B "$HALIDE_BUILD_DIR" -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR="$LLVM_INSTALL_DIR/lib/cmake/llvm"
apt-get install -y cmake
cmake -S "$HALIDE_SOURCE_DIR" -B "$HALIDE_BUILD_DIR" -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR="$LLVM_INSTALL_DIR/lib/cmake/llvm"
ls -la
export HALIDE_SOURCE_DIR="$PWD" && cmake -S "$HALIDE_SOURCE_DIR" -B "$HALIDE_BUILD_DIR" -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR="$LLVM_INSTALL_DIR/lib/cmake/llvm"
apt-get install -y g++
cmake -S "$HALIDE_SOURCE_DIR" -B "$HALIDE_BUILD_DIR" -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR="$LLVM_INSTALL_DIR/lib/cmake/llvm"
cmake -S "$HALIDE_SOURCE_DIR" -B "$HALIDE_BUILD_DIR" -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR="$LLVM_INSTALL_DIR/lib/cmake/llvm"
cmake --build "$HALIDE_BUILD_DIR" --config Release -j $(nproc)
apt-get install -y libtinfo-dev
cmake --build "$HALIDE_BUILD_DIR" --config Release -j $(nproc)
cd "$HALIDE_BUILD_DIR" && ctest --output-on-failure
