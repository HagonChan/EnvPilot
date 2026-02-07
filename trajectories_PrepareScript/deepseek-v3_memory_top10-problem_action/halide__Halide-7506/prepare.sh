ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
open "README.md"
search_file 'Building Halide with CMake' README.md
goto 184
sudo apt-get update && sudo apt-get install -y llvm-14 clang-14 lld-14 clang-tools-14 libpng-dev libjpeg-turbo8-dev build-essential cmake ninja-build python3 git pkg-config
apt-get update && apt-get install -y llvm-14 clang-14 lld-14 clang-tools-14 libpng-dev libjpeg-turbo8-dev build-essential cmake ninja-build python3 git pkg-config
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-14/lib/cmake/llvm -S . -B build
apt-get install --reinstall -y llvm-14 clang-14
ls -la /usr/lib/llvm-14/lib/libclangBasic.a
ls -la /usr/lib/llvm-14/lib/libclangBasic.so
apt-get install -y libclang-14-dev
ls -la /usr/lib/llvm-14/lib/libclangBasic.a
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-14/lib/cmake/llvm -S . -B build
apt-get install -y lld-14 liblld-14-dev
ls -la /usr/lib/llvm-14/lib/cmake/lld
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-14/lib/cmake/llvm -DLLD_DIR=/usr/lib/llvm-14/lib/cmake/lld -S . -B build
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-14/lib/cmake/llvm -DLLD_DIR=/usr/lib/llvm-14/lib/cmake/lld -DHalide_SHARED_LLVM=YES -S . -B build
apt-get install -y python3-dev
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-14/lib/cmake/llvm -DLLD_DIR=/usr/lib/llvm-14/lib/cmake/lld -DHalide_SHARED_LLVM=YES -S . -B build
cmake --build build
cd build && ctest --output-on-failure
ls -la python_bindings
ls -la python_bindings/apps
python3 -m pip install numpy pytest
apt-get install -y python3-pip
python3 -m pip install numpy pytest
cd build && ctest --output-on-failure
ctest --output-on-failure
python3 -c "import halide; print(halide.__file__)"
ls -la python_bindings
ls -la python_bindings/src
ls -la python_bindings/src/halide
ls -la python_bindings/src/halide/Release
ls -la python_bindings/src/halide/Release/halide
PYTHONPATH=$PYTHONPATH:$(pwd)/python_bindings/src/halide/Release python3 -c "import halide; print(halide.__file__)"
PYTHONPATH=$PYTHONPATH:$(pwd)/python_bindings/src/halide/Release ctest --output-on-failure
PYTHONPATH=$PYTHONPATH:$(pwd)/python_bindings/src/halide/Release python3 -c "import halide; print(halide.__file__)"
PYTHONPATH=$PYTHONPATH:$(pwd)/python_bindings/src/halide/Release ctest --output-on-failure
PYTHONPATH=$PYTHONPATH:$(pwd)/python_bindings/src/halide/Release python3 -c "import halide; print(halide.__file__)"
PYTHONPATH=$PYTHONPATH:$(pwd)/python_bindings/src/halide/Release ctest --output-on-failure
PYTHONPATH=$PYTHONPATH:$(pwd)/python_bindings/src/halide/Release python3 -c "import halide; print(halide.__file__)"
PYTHONPATH=$PYTHONPATH:$(pwd)/python_bindings/src/halide/Release ctest --output-on-failure
PYTHONPATH=$PYTHONPATH:$(pwd)/python_bindings/src/halide/Release python3 -c "import halide; print(halide.__file__)"
PYTHONPATH=$PYTHONPATH:$(pwd)/python_bindings/src/halide/Release ctest --output-on-failure
PYTHONPATH=$PYTHONPATH:$(pwd)/python_bindings/src/halide/Release python3 -c "import halide; print(halide.__file__)"
PYTHONPATH=$PYTHONPATH:$(pwd)/python_bindings/src/halide/Release ctest --output-on-failure

