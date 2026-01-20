ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "README.md"
open "CMakeLists.txt"
open "Makefile"
apt-get update && apt-get install -y build-essential cmake ninja-build llvm-12-dev libjpeg-dev libpng-dev
export LLVM_CONFIG=/usr/bin/llvm-config-12 && $LLVM_CONFIG --version
mkdir -p build && cd build
cmake -DCMAKE_CXX_STANDARD=17 -DBUILD_SHARED_LIBS=ON -DWITH_TESTS=ON -DWITH_PYTHON_BINDINGS=ON ..
apt-get install -y clang-12
cmake -DCMAKE_CXX_STANDARD=17 -DBUILD_SHARED_LIBS=ON -DWITH_TESTS=ON -DWITH_PYTHON_BINDINGS=ON -DCMAKE_PREFIX_PATH=/usr/lib/llvm-12 ..
apt-get install --reinstall -y clang-12 libclang-12-dev
cmake -DCMAKE_CXX_STANDARD=17 -DBUILD_SHARED_LIBS=ON -DWITH_TESTS=ON -DWITH_PYTHON_BINDINGS=ON -DCMAKE_PREFIX_PATH=/usr/lib/llvm-12 ..
apt-get install -y lld-12
cmake -DCMAKE_CXX_STANDARD=17 -DBUILD_SHARED_LIBS=ON -DWITH_TESTS=ON -DWITH_PYTHON_BINDINGS=ON -DCMAKE_PREFIX_PATH="/usr/lib/llvm-12;/usr/lib/llvm-12/lib/cmake/lld" ..
find /usr -name "*lld-config.cmake" -o -name "*LLDConfig.cmake"
apt-get install -y lld-12-dev
dpkg -L lld-12
cmake -DCMAKE_CXX_STANDARD=17 -DBUILD_SHARED_LIBS=ON -DWITH_TESTS=ON -DWITH_PYTHON_BINDINGS=ON -DCMAKE_PREFIX_PATH=/usr/lib/llvm-12 -DLLD_DIR=/usr/lib/llvm-12 ..
open "dependencies/llvm/CMakeLists.txt"
open "CMakeLists.txt"
cd .. && ls
open "CMakeLists.txt"
open "dependencies/CMakeLists.txt"
open "dependencies/llvm/CMakeLists.txt"
edit 'option(TARGET_WEBASSEMBLY "Include WebAssembly target" ON' 'option(TARGET_WEBASSEMBLY "Include WebAssembly target" OFF' True
search_file TARGET_WEBASSEMBLY dependencies/llvm/CMakeLists.txt
edit 'cmake_dependent_option(${OPTION} "Include ${comp} target" ON
                           "${comp} IN_LIST LLVM_TARGETS_TO_BUILD" OFF)' 'cmake_dependent_option(${OPTION} "Include ${comp} target" OFF
                           "${comp} IN_LIST LLVM_TARGETS_TO_BUILD" OFF)' True
cmake -DCMAKE_CXX_STANDARD=17 -DBUILD_SHARED_LIBS=ON -DWITH_TESTS=ON -DWITH_PYTHON_BINDINGS=ON -DCMAKE_PREFIX_PATH=/usr/lib/llvm-12 ..
cd build && cmake -DCMAKE_CXX_STANDARD=17 -DBUILD_SHARED_LIBS=ON -DWITH_TESTS=ON -DWITH_PYTHON_BINDINGS=ON -DCMAKE_PREFIX_PATH=/usr/lib/llvm-12 ..
cmake -DCMAKE_CXX_STANDARD=17 -DBUILD_SHARED_LIBS=ON -DWITH_TESTS=ON -DWITH_PYTHON_BINDINGS=ON -DCMAKE_PREFIX_PATH=/usr/lib/llvm-12 -DTARGET_WEBASSEMBLY=OFF ..
cmake -DCMAKE_CXX_STANDARD=17 -DBUILD_SHARED_LIBS=ON -DWITH_TESTS=ON -DWITH_PYTHON_BINDINGS=OFF -DCMAKE_PREFIX_PATH=/usr/lib/llvm-12 -DTARGET_WEBASSEMBLY=OFF ..
make -j$(nproc)
make test
