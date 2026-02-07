ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
goto 100
goto 200
goto 300
goto 400
sudo apt-get update && sudo apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build
apt-get update && apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build
apt-get update && apt-get install -y --fix-missing doxygen libjpeg-dev libpng-dev ninja-build
mkdir -p build && cd build && cmake ..
apt-get install -y cmake
cd build && cmake ..
mkdir -p build && cd build && cmake ..
ls -la /home/Halide
cd /home/Halide && mkdir -p build && cd build && cmake ..
apt-get install -y g++
cd /home/Halide && mkdir -p build && cd build && cmake ..
open ".github/workflows/test.yml"
goto 100
goto 200
goto 300
apt-get install -y llvm llvm-dev clang
cd /home/Halide && mkdir -p build && cd build && cmake ..
ls -la /usr/lib/llvm-14/lib/
apt-get install --reinstall -y clang-14-dev
apt-get install -y libclang-14-dev
cd /home/Halide && mkdir -p build && cd build && cmake ..
apt-get install -y lld-14
cd /home/Halide && mkdir -p build && cd build && cmake ..
ls -la /usr/lib/llvm-14/
apt-get install -y lld-14-dev
ls -la /usr/lib/llvm-14/lib/cmake/
apt-get install -y lld
ls -la /home/Halide/
cd /home/Halide && make
cd /home/Halide && make LLVM_OK=y
apt-get install -y llvm-13 llvm-13-dev clang-13 lld-13
cd /home/Halide && make LLVM_OK=y
apt-get install -y llvm-12 llvm-12-dev clang-12 lld-12
cd /home/Halide && make LLVM_OK=y
open ".github/workflows/test.yml"
search_file matrix.llvm_version .github/workflows/test.yml
apt-get install -y llvm-10 llvm-10-dev clang-10 lld-10
echo "deb http://archive.ubuntu.com/ubuntu focal main universe" | tee /etc/apt/sources.list.d/focal.list && apt-get update && apt-get install -y llvm-10 llvm-10-dev clang-10 lld-10
cd /home/Halide && make LLVM_OK=y
