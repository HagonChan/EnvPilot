ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
open "README.md"
open "CMakeLists.txt"
ls -la dependencies
open "dependencies/llvm/CMakeLists.txt"
sudo apt-get update && sudo apt-get install -y llvm-14 clang lld clang-tools-extra libpng-dev libjpeg-turbo-dev python3 git build-essential cmake ninja-build
apt-get update && apt-get install -y llvm-14 clang lld clang-tools-extra libpng-dev libjpeg-turbo-dev python3 git build-essential cmake ninja-build
apt-get install -y llvm-14 clang lld python3 git build-essential cmake ninja-build libpng-dev
apt-get install -y libjpeg-dev
llvm-config --version && clang --version && cmake --version
find /usr -name llvm-config
export PATH=/usr/lib/llvm-14/bin:$PATH && llvm-config --version && clang --version && cmake --version
git clone https://github.com/microsoft/vcpkg.git && cd vcpkg && ./bootstrap-vcpkg.sh
git -c http.version=HTTP/1.1 clone https://github.com/microsoft/vcpkg.git && cd vcpkg && ./bootstrap-vcpkg.sh
ping -c 4 github.com
apt-get install -y iputils-ping
ping -c 4 github.com
git -c http.version=HTTP/1.1 clone https://github.com/microsoft/vcpkg.git && cd vcpkg && ./bootstrap-vcpkg.sh
wget https://github.com/microsoft/vcpkg/archive/refs/heads/master.tar.gz && tar -xzf master.tar.gz && mv vcpkg-master vcpkg && cd vcpkg && ./bootstrap-vcpkg.sh
apt-get install -y wget
wget https://github.com/microsoft/vcpkg/archive/refs/heads/master.tar.gz && tar -xzf master.tar.gz && mv vcpkg-master vcpkg && cd vcpkg && ./bootstrap-vcpkg.sh
apt-get install -y curl zip unzip tar && ./bootstrap-vcpkg.sh
./vcpkg install halide:x64-linux
apt-get install -y pkg-config && ./vcpkg install halide:x64-linux
ls -la /testbed/vcpkg/packages/halide_x64-linux
cd /testbed
cmake -B build -S . -DCMAKE_TOOLCHAIN_FILE=/testbed/vcpkg/scripts/buildsystems/vcpkg.cmake -DCMAKE_BUILD_TYPE=Release
apt-get install -y python3-dev
cmake -B build -S . -DCMAKE_TOOLCHAIN_FILE=/testbed/vcpkg/scripts/buildsystems/vcpkg.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release --parallel 4
apt-get remove -y llvm-18 && apt-get install -y llvm-14
export LLVM_CONFIG=/usr/lib/llvm-14/bin/llvm-config && cmake -B build -S . -DCMAKE_TOOLCHAIN_FILE=/testbed/vcpkg/scripts/buildsystems/vcpkg.cmake -DCMAKE_BUILD_TYPE=Release
./vcpkg remove halide:x64-linux
cd vcpkg && ./vcpkg remove halide:x64-linux
export LLVM_CONFIG=/usr/lib/llvm-14/bin/llvm-config && ./vcpkg install halide:x64-linux
cd /testbed
export LLVM_CONFIG=/usr/lib/llvm-14/bin/llvm-config && cmake -B build -S . -DCMAKE_TOOLCHAIN_FILE=/testbed/vcpkg/scripts/buildsystems/vcpkg.cmake -DCMAKE_BUILD_TYPE=Release
find /testbed/vcpkg -name "halide*" -type f
open "/testbed/vcpkg/ports/halide/portfile.cmake"
edit 'vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS ${FEATURE_OPTIONS}
        -DWITH_WABT=OFF
        -DWITH_V8=OFF
        -DWITH_DOCS=OFF
        -DWITH_PYTHON_BINDINGS=OFF
        -DWITH_TESTS=OFF
        -DWITH_TUTORIALS=OFF
        -DWITH_UTILS=OFF
        -DWITH_SERIALIZATION=OFF # Disable experimental serializer
        -DCMAKE_INSTALL_LIBDIR=bin
        "-DCMAKE_INSTALL_DATADIR=share/${PORT}"
        "-DHalide_INSTALL_CMAKEDIR=share/${PORT}"
        -DHalide_INSTALL_HELPERSDIR=share/HalideHelpers
        -DHalide_INSTALL_PLUGINDIR=bin
        -DCMAKE_DISABLE_FIND_PACKAGE_PNG=TRUE
        -DCMAKE_DISABLE_FIND_PACKAGE_JPEG=JPEG
)' 'vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS ${FEATURE_OPTIONS}
        -DWITH_WABT=OFF
        -DWITH_V8=OFF
        -DWITH_DOCS=OFF
        -DWITH_PYTHON_BINDINGS=OFF
        -DWITH_TESTS=OFF
        -DWITH_TUTORIALS=OFF
        -DWITH_UTILS=OFF
        -DWITH_SERIALIZATION=OFF # Disable experimental serializer
        -DCMAKE_INSTALL_LIBDIR=bin
        "-DCMAKE_INSTALL_DATADIR=share/${PORT}"
        "-DHalide_INSTALL_CMAKEDIR=share/${PORT}"
        -DHalide_INSTALL_HELPERSDIR=share/HalideHelpers
        -DHalide_INSTALL_PLUGINDIR=bin
        -DCMAKE_DISABLE_FIND_PACKAGE_PNG=TRUE
        -DCMAKE_DISABLE_FIND_PACKAGE_JPEG=JPEG
        -DLLVM_CONFIG=/usr/lib/llvm-14/bin/llvm-config
)'
cd /testbed/vcpkg && ./vcpkg install halide:x64-linux
cd /testbed && cmake -B build -S . -DCMAKE_TOOLCHAIN_FILE=/testbed/vcpkg/scripts/buildsystems/vcpkg.cmake -DCMAKE_BUILD_TYPE=Release
open "CMakeLists.txt"
goto 90
open "dependencies/CMakeLists.txt"
open "dependencies/llvm/CMakeLists.txt"

