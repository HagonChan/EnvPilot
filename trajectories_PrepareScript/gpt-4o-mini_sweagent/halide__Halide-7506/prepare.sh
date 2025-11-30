find_file '*.yml' .
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 15CF4D18AF4F7421 && apt-add-repository "deb https://apt.llvm.org/$(lsb_release -sc)/ llvm-toolchain-$(lsb_release -sc)-14 main" && apt-get update && apt-get install llvm-14 clang-14 liblld-14-dev libclang-14-dev clang-tidy-14 ninja-build
apt-get install gnupg
apt-get update && apt-get install -y gnupg
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 15CF4D18AF4F7421 && apt-add-repository "deb https://apt.llvm.org/$(lsb_release -sc)/ llvm-toolchain-$(lsb_release -sc)-14 main" && apt-get update && apt-get install -y llvm-14 clang-14 liblld-14-dev libclang-14-dev clang-tidy-14 ninja-build
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 15CF4D18AF4F7421 && echo 'deb https://apt.llvm.org/jammy/ llvm-toolchain-jammy-14 main' | tee /etc/apt/sources.list.d/llvm-toolchain-jammy-14.list && apt-get update && apt-get install -y llvm-14 clang-14 liblld-14-dev libclang-14-dev clang-tidy-14 ninja-build
find_file CMakeLists.txt
cmake -S . -B build -DBUILD_TESTING=OFF -DBUILD_PYTHON_BINDINGS=OFF -DBUILD_TUTORIALS=OFF -DBUILD_DOCUMENTATION=OFF
apt-get install -y cmake
cmake -S . -B build -DBUILD_TESTING=OFF -DBUILD_PYTHON_BINDINGS=OFF -DBUILD_TUTORIALS=OFF -DBUILD_DOCUMENTATION=OFF
apt-get install -y g++
cmake -S . -B build -DBUILD_TESTING=OFF -DBUILD_PYTHON_BINDINGS=OFF -DBUILD_TUTORIALS=OFF -DBUILD_DOCUMENTATION=OFF
cmake -S . -B build -DBUILD_TESTING=OFF -DBUILD_PYTHON_BINDINGS=OFF -DBUILD_TUTORIALS=OFF -DBUILD_DOCUMENTATION=OFF -DHALIDE_SHARED_LLVM=YES
cmake -S . -B build -DBUILD_TESTING=OFF -DBUILD_PYTHON_BINDINGS=OFF -DBUILD_TUTORIALS=OFF -DBUILD_DOCUMENTATION=OFF -DTARGET_WEBASSEMBLY=OFF
apt-get install -y python3-dev
cmake -S . -B build -DBUILD_TESTING=OFF -DBUILD_PYTHON_BINDINGS=OFF -DBUILD_TUTORIALS=OFF -DBUILD_DOCUMENTATION=OFF -DTARGET_WEBASSEMBLY=OFF
cmake --build build
ctest --test-dir build
open "/testbed/build/Testing/Temporary/LastTest.log"
goto 31400
find_file requirements.txt
open "/testbed/requirements.txt"
create install_requirements.sh
insert '#!/bin/bash

pip install -r requirements.txt
' 0
chmod +x install_requirements.sh && ./install_requirements.sh
apt-get install -y python3-pip
./install_requirements.sh
ctest --test-dir build
open "/testbed/build/Testing/Temporary/LastTest.log"
goto 31800
