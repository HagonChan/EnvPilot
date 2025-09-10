ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
open "README.md"
search_file 'Building Halide' README.md
goto 115
goto 213
apt-get update && apt-get install -y gcc llvm clang lld clang-tools-extra compiler-rt libc++ libstdc++ glibc cmake ninja-build
apt-get update && apt-get install -y gcc llvm clang lld cmake ninja-build libc++-dev libstdc++-12-dev
cmake --version && ninja --version
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ jammy main' | sudo tee /etc/apt/sources.list.d/kitware.list >/dev/null && sudo apt-get update && sudo apt-get install -y cmake
apt-get install -y gnupg && wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ jammy main' | tee /etc/apt/sources.list.d/kitware.list >/dev/null && apt-get update && apt-get install -y cmake
llvm-config --version
search_file 'LLVM version' README.md
open "CMakeLists.txt"
mkdir -p build && cd build && cmake ..
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz
curl -L https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz -o cmake-3.28.0-linux-x86_64.tar.gz
apt-cache policy cmake
edit 'cmake_minimum_required(VERSION 3.28)' 'cmake_minimum_required(VERSION 3.22)'
goto 1
edit 'cmake_minimum_required(VERSION 3.28)' 'cmake_minimum_required(VERSION 3.22)'
cd build && cmake ..
mkdir -p build && cd build && cmake ..
open "cmake/BundleStatic.cmake"
search_file BundleStatic CMakeLists.txt
ls -la ../cmake
ls -la ../../cmake
open "../../cmake/BundleStatic.cmake"
edit 'cmake_minimum_required(VERSION 3.28)' 'cmake_minimum_required(VERSION 3.22)'
cd build && cmake ..
mkdir -p build && cd build && cmake ..
cd ../.. && mkdir -p build && cd build && cmake ..
open "cmake/HalideGeneratorHelpers.cmake"
search_file HalideGeneratorHelpers CMakeLists.txt
ls -la ../../cmake
open "../../cmake/HalideGeneratorHelpers.cmake"
edit 'cmake_minimum_required(VERSION 3.28)' 'cmake_minimum_required(VERSION 3.22)'
cd ../.. && mkdir -p build && cd build && cmake ..
open "cmake/HalideTargetHelpers.cmake"
search_file HalideTargetHelpers CMakeLists.txt
ls -la ../../cmake
ls -la ../../../cmake
edit 'cmake_minimum_required(VERSION 3.22)' '# cmake_minimum_required(VERSION 3.22)'
cd ../.. && mkdir -p build && cd build && cmake ..
cd ../.. && ls -la
cd /testbed && mkdir -p build && cd build && cmake ..
open "cmake/HalideTargetHelpers.cmake"

