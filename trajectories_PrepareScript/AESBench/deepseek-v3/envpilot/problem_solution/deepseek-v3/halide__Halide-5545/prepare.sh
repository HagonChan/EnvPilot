ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "python_bindings/requirements.txt"
apt-get update && apt-get install -y git curl tar python3 python3-pip build-essential pkg-config zlib1g-dev doxygen libjpeg-dev libpng-dev ninja-build freeglut3-dev libglu1-mesa-dev mesa-common-dev gcc-7 g++-7 gcc-7-multilib g++-7-multilib gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt coreutils jpeg libpng
add-apt-repository -y ppa:ubuntu-toolchain-r/test && apt-get update && apt-get install -y gcc-7 g++-7 gcc-7-multilib g++-7-multilib
apt-get install -y software-properties-common
add-apt-repository -y ppa:ubuntu-toolchain-r/test && apt-get update && apt-get install -y gcc-7 g++-7 gcc-7-multilib g++-7-multilib
apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build freeglut3-dev libglu1-mesa-dev mesa-common-dev gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu qemu-user qemu-user-binfmt coreutils
pip install -r python_bindings/requirements.txt
apt-get install -y python3-pip
pip3 install -r python_bindings/requirements.txt
mkdir -p build && cd build && cmake .. -G Ninja
apt-get install -y cmake
cmake .. -G Ninja
apt-cache search llvm
apt-get install -y llvm-14 llvm-14-dev llvm-14-tools
cmake .. -G Ninja -DCMAKE_BUILD_TYPE=Release
apt-get install -y clang-14 libclang-14-dev
cmake .. -G Ninja -DCMAKE_BUILD_TYPE=Release
apt-get install -y lld-14
cmake .. -G Ninja -DCMAKE_BUILD_TYPE=Release
find /usr -name "*lld-config.cmake" -o -name "*LLDConfig.cmake"
apt-get install -y lld-14-dev
export LLD_DIR=/usr/lib/llvm-14/lib/cmake/lld && cmake .. -G Ninja -DCMAKE_BUILD_TYPE=Release
apt-get remove -y llvm-14 llvm-14-dev llvm-14-tools clang-14 libclang-14-dev lld-14
apt-get install -y llvm-12 llvm-12-dev llvm-12-tools clang-12 libclang-12-dev lld-12
cmake .. -G Ninja -DCMAKE_BUILD_TYPE=Release
apt-get install -y lld-12-dev
export LLD_DIR=/usr/lib/llvm-12/lib/cmake/lld && cmake .. -G Ninja -DCMAKE_BUILD_TYPE=Release
ls -la /usr/lib/llvm-12/lib/cmake/lld
open "dependencies/llvm/CMakeLists.txt"
find .. -name "CMakeLists.txt"
open "../dependencies/llvm/CMakeLists.txt"
cmake .. -G Ninja -DCMAKE_BUILD_TYPE=Release -DTARGET_WEBASSEMBLY=OFF
ninja
ctest
ctest --rerun-failed --output-on-failure
open "python_bindings/tutorial/lesson_09_update_definitions.py"
find_file lesson_09_update_definitions.py
find .. -name "lesson_09_update_definitions.py"
open "../python_bindings/tutorial/lesson_09_update_definitions.py"
edit 'result = np.empty((4, 4), dtype=np.int)' 'result = np.empty((4, 4), dtype=int)' True
find_file lesson_10_aot_compilation_run.py
find .. -name "lesson_10_aot_compilation_run.py"
open "../python_bindings/tutorial/lesson_10_aot_compilation_run.py"
edit 'input[x, y] = x ^ (y + 1)' 'input[x, y] = (x ^ (y + 1)) % 251' True
ctest --rerun-failed --output-on-failure
open "../python_bindings/tutorial/lesson_09_update_definitions.py"

