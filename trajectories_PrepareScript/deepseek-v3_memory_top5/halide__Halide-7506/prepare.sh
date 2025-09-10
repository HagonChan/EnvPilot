ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
apt-get update && apt-get install -y llvm-14 clang-14 liblld-14-dev libclang-14-dev clang-tidy-14 ninja-build cmake make
cmake -G Ninja -S . -B build -DCMAKE_BUILD_TYPE=Release -DWITH_DOCS=NO -DWITH_PYTHON_BINDINGS=NO -DWITH_TESTS=NO -DWITH_TUTORIALS=NO -DWITH_UTILS=NO -DWITH_PYTHON_STUBS=NO && cmake --build build --target install
export CC=clang-14 && export CXX=clang++-14 && cmake -G Ninja -S . -B build -DCMAKE_BUILD_TYPE=Release -DWITH_DOCS=NO -DWITH_PYTHON_BINDINGS=NO -DWITH_TESTS=NO -DWITH_TUTORIALS=NO -DWITH_UTILS=NO -DWITH_PYTHON_STUBS=NO && cmake --build build --target install
export CC=clang-14 && export CXX=clang++-14 && cmake -G Ninja -S . -B build -DCMAKE_BUILD_TYPE=Release -DWITH_DOCS=NO -DWITH_PYTHON_BINDINGS=NO -DWITH_TESTS=NO -DWITH_TUTORIALS=NO -DWITH_UTILS=NO -DWITH_PYTHON_STUBS=NO -DTARGET_WEBASSEMBLY=OFF && cmake --build build --target install
apt-get install -y zlib1g-dev
export CC=clang-14 && export CXX=clang++-14 && cmake -G Ninja -S . -B build -DCMAKE_BUILD_TYPE=Release -DWITH_DOCS=NO -DWITH_PYTHON_BINDINGS=NO -DWITH_TESTS=NO -DWITH_TUTORIALS=NO -DWITH_UTILS=NO -DWITH_PYTHON_STUBS=NO -DTARGET_WEBASSEMBLY=OFF && cmake --build build --target install
ls -la tests
halide-config --version
ls -la /usr/local/bin
open "README.md"
