ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open "README.md"
open "CMakeLists.txt"
ls -la dependencies
open "dependencies/llvm/CMakeLists.txt"
apt-get update && apt-get install -y llvm-14 clang-14 liblld-14-dev libclang-14-dev clang-tidy-14 ninja-build libpng-dev libjpeg-turbo-dev
apt-get install -y libjpeg-dev
mkdir -p build && cd build && cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-14/cmake -GNinja ..
apt-get install -y cmake
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-14/cmake -GNinja ..
apt-get install -y ninja-build
gcc --version && g++ --version
apt-get install -y g++
gcc --version && g++ --version
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-14/cmake -GNinja ..
ls /usr/lib/llvm-14/lib/cmake/llvm
find /usr -name LLVMConfig.cmake
apt-get install -y llvm-14-dev
find /usr -name LLVMConfig.cmake
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-14/lib/cmake/llvm -GNinja ..
apt-get install -y clang-14-dev
apt-get install -y libclang-14-dev
find /usr -name ClangConfig.cmake
find /usr -name "*clang*Config.cmake"
open "dependencies/llvm/CMakeLists.txt"
ls -la dependencies/llvm
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-14/lib/cmake/llvm -GNinja ..
ls /usr/lib/llvm-14/lib/cmake/clang
apt-get install -y clang-14
find /testbed -name CMakeLists.txt
open "/testbed/dependencies/llvm/CMakeLists.txt"
edit 'find_package(Clang REQUIRED CONFIG HINTS "${LLVM_DIR}/../clang" "${LLVM_DIR}/../lib/cmake/clang")' '# find_package(Clang REQUIRED CONFIG HINTS "${LLVM_DIR}/../clang" "${LLVM_DIR}/../lib/cmake/clang")'
edit 'message(STATUS "Using ClangConfig.cmake in: ${Clang_DIR}")' '# message(STATUS "Using ClangConfig.cmake in: ${Clang_DIR}")'
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-14/lib/cmake/llvm -GNinja ..
edit 'set_target_properties(llvm-as clang PROPERTIES IMPORTED_GLOBAL TRUE)' 'set_target_properties(llvm-as PROPERTIES IMPORTED_GLOBAL TRUE)
# set_target_properties(clang PROPERTIES IMPORTED_GLOBAL TRUE)'
apt-get install -y lld-14
find /usr -name LLDConfig.cmake
apt-get install -y lld-14-dev
ls /usr/lib/llvm-14/lib/cmake/lld
edit 'find_package(LLD CONFIG REQUIRED HINTS "${LLVM_DIR}/../lld" "${LLVM_DIR}/../lib/cmake/lld")' '# find_package(LLD CONFIG REQUIRED HINTS "${LLVM_DIR}/../lld" "${LLVM_DIR}/../lib/cmake/lld")'
edit 'message(STATUS "Using LLDConfig.cmake in: ${LLD_DIR}")' '# message(STATUS "Using LLDConfig.cmake in: ${LLD_DIR}")'
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-14/lib/cmake/llvm -GNinja ..
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-14/lib/cmake/llvm -DTARGET_WEBASSEMBLY=OFF -GNinja ..
apt-get install -y python3-dev
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_DIR=/usr/lib/llvm-14/lib/cmake/llvm -DTARGET_WEBASSEMBLY=OFF -GNinja ..
open "src/runtime/CMakeLists.txt"
find /testbed -name CMakeLists.txt | grep runtime

