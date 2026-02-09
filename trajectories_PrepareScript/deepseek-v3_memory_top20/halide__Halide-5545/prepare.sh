ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
apt-get update && apt-get install -y build-essential cmake ninja-build doxygen libjpeg-dev libpng-dev freeglut3-dev libglu1-mesa-dev mesa-common-dev gcc-7 g++-7 gcc-multilib g++-multilib gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt coreutils jpeg libpng libjpeg-turbo zlib git curl wget python3 python3-dev python3-pip
apt-get update && apt-get install -y build-essential cmake ninja-build doxygen libjpeg-dev libpng-dev freeglut3-dev libglu1-mesa-dev mesa-common-dev gcc-11 g++-11 gcc-multilib g++-multilib gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt coreutils git curl wget python3 python3-dev python3-pip
apt-get update && apt-get install -y build-essential cmake ninja-build doxygen libjpeg-dev libpng-dev freeglut3-dev libglu1-mesa-dev mesa-common-dev gcc-11 g++-11 gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt coreutils git curl wget python3 python3-dev python3-pip
pip install -r python_bindings/requirements.txt
mkdir -p build && cd build && cmake ..
apt-get install -y llvm-14 llvm-14-dev
cmake ..
apt-get install -y clang-14 clang-14-dev
apt-get install -y clang
cmake ..
apt-get install --reinstall -y clang clang-14 libclang-common-14-dev
cmake ..
apt-get install -y libclang-14-dev
cmake ..
apt-get install -y lld-14
cmake ..
apt-get install -y liblld-14-dev
cmake ..
export LLD_DIR=/usr/lib/llvm-14/lib/cmake/lld && cmake ..
cmake -DHalide_SHARED_LLVM=YES ..
make
apt-get install -y llvm-12 llvm-12-dev clang-12 libclang-12-dev lld-12 liblld-12-dev
cd .. && rm -rf build && mkdir -p build && cd build && cmake -DLLVM_DIR=/usr/lib/llvm-12/cmake ..
cmake -DLLVM_DIR=/usr/lib/llvm-12/cmake -DHalide_SHARED_LLVM=YES ..
make
cd .. && rm -rf build && mkdir -p build && cd build && cmake -DLLVM_DIR=/usr/lib/llvm-12/cmake -DHalide_SHARED_LLVM=YES -DCMAKE_BUILD_TYPE=Release ..
make
cd .. && rm -rf build && mkdir -p build && cd build && cmake -DLLVM_DIR=/usr/lib/llvm-12/cmake -DHalide_SHARED_LLVM=YES -DCMAKE_BUILD_TYPE=Release -DTARGET_DEBUG=OFF ..
make
open "CMakeLists.txt"
find .. -name CMakeLists.txt
open "../CMakeLists.txt"
open "../src/runtime/CMakeLists.txt"
edit 'add_custom_command(
        OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${module}_debug.bc
        COMMAND ${LLVM_AS_EXECUTABLE} -o ${CMAKE_CURRENT_BINARY_DIR}/${module}_debug.bc ${CMAKE_CURRENT_BINARY_DIR}/${module}_debug.ll
        DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/${module}_debug.ll
        COMMENT "Generating ${module}_debug.bc"
        VERBATIM
    )' ''
search_file _debug.bc ../src/runtime/CMakeLists.txt
open "../src/CMakeLists.txt"
make -k

