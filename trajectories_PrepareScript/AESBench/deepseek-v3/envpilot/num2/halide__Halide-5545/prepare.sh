ls -a
ls -a .github/workflows
open ".github/workflows/test.yml"
open "README.md"
open "CMakeLists.txt"
apt-get update && apt-get install -y build-essential cmake ninja-build gcc-7 g++-7 libjpeg-dev libpng-dev freeglut3-dev libglu1-mesa-dev mesa-common-dev doxygen git curl wget python3 python3-dev python3-pip
apt-get install -y gcc-11 g++-11
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 110 --slave /usr/bin/g++ g++ /usr/bin/g++-11
gcc --version && g++ --version
pip install -r python_bindings/requirements.txt
apt-get install -y python3-pip
pip install -r python_bindings/requirements.txt
mkdir -p build && cd build && cmake -GNinja ..
apt-get install -y cmake
cmake -GNinja ..
apt-get install -y ninja-build
cmake -GNinja ..
apt-get install -y llvm-11 llvm-11-dev clang-11
cmake -GNinja -DCMAKE_BUILD_TYPE=Release ..
apt-get install --reinstall -y llvm-11 llvm-11-dev clang-11
cmake -GNinja -DCMAKE_BUILD_TYPE=Release ..
ls /usr/lib/llvm-11/lib/
apt-get install -y libclang-11-dev
ls /usr/lib/llvm-11/lib/ | grep libclangBasic.a
cmake -GNinja -DCMAKE_BUILD_TYPE=Release ..
apt-get install -y lld-11
cmake -GNinja -DCMAKE_BUILD_TYPE=Release ..
find /usr -name "*lld-config.cmake" 2>/dev/null
apt-get install -y lld-11-dev
export LLD_DIR=/usr/lib/llvm-11 && cmake -GNinja -DCMAKE_BUILD_TYPE=Release ..
find /usr -name "*lld*.cmake" 2>/dev/null
open "CMakeLists.txt"
cd .. && ls
open "CMakeLists.txt"
open "dependencies/CMakeLists.txt"
open "dependencies/llvm/CMakeLists.txt"
cd build && cmake -GNinja -DCMAKE_BUILD_TYPE=Release -DTARGET_WEBASSEMBLY=OFF ..
ninja
ctest
