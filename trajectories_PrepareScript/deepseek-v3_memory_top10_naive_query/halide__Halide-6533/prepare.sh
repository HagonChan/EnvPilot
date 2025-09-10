ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "README.md"
open "CMakeLists.txt"
apt-get update && apt-get install -y build-essential cmake ninja-build g++-7 clang libjpeg-dev libpng-dev doxygen
apt-get install -y g++-9 clang libjpeg-dev libpng-dev doxygen
mkdir -p build && cd build && cmake -DWITH_TESTS=ON -DCMAKE_BUILD_TYPE=Release ..
apt-get install -y cmake
cmake -DWITH_TESTS=ON -DCMAKE_BUILD_TYPE=Release ..
apt-get install --reinstall -y llvm-14 clang-14
cmake -DWITH_TESTS=ON -DCMAKE_BUILD_TYPE=Release ..
apt-get install -y llvm-dev
cmake -DWITH_TESTS=ON -DCMAKE_BUILD_TYPE=Release ..
apt-get install -y libclang-14-dev
cmake -DWITH_TESTS=ON -DCMAKE_BUILD_TYPE=Release ..
apt-get install -y lld
cmake -DWITH_TESTS=ON -DCMAKE_BUILD_TYPE=Release ..
apt-get install -y lld-14-dev
find /usr -name "*lld-config.cmake*" -o -name "*LLDConfig.cmake*"
apt-get install -y lldb-14-dev
export LLD_DIR=/usr/lib/llvm-14/lib/cmake/lld && cmake -DWITH_TESTS=ON -DCMAKE_BUILD_TYPE=Release ..
wget https://apt.llvm.org/llvm.sh && chmod +x llvm.sh && ./llvm.sh 14
apt-get install -y wget
wget https://apt.llvm.org/llvm.sh && chmod +x llvm.sh && ./llvm.sh 14
apt-get install -y lsb-release
./llvm.sh 14
apt-get install -y gnupg software-properties-common
./llvm.sh 14
cmake -DWITH_TESTS=ON -DCMAKE_BUILD_TYPE=Release ..
find /usr -name "*lld-config.cmake*" -o -name "*LLDConfig.cmake*"
apt-get install -y lldb-14-dev
export LLD_DIR=/usr/lib/llvm-14/lib/cmake/lld && cmake -DWITH_TESTS=ON -DCMAKE_BUILD_TYPE=Release ..
wget https://apt.llvm.org/llvm.sh && chmod +x llvm.sh && ./llvm.sh 14
cmake -DWITH_TESTS=ON -DCMAKE_BUILD_TYPE=Release ..
find /usr -name "*lld-config.cmake*" -o -name "*LLDConfig.cmake*"
export LLD_DIR=/usr/lib/llvm-14/lib/cmake/lld && cmake -DWITH_TESTS=ON -DCMAKE_BUILD_TYPE=Release ..
wget https://apt.llvm.org/llvm.sh && chmod +x llvm.sh && ./llvm.sh 14
apt-get install -y lld-14-dev
export LLD_DIR=/usr/lib/llvm-14/lib/cmake/lld && cmake -DWITH_TESTS=ON -DCMAKE_BUILD_TYPE=Release ..
wget https://apt.llvm.org/llvm.sh && chmod +x llvm.sh && ./llvm.sh 14
wget --no-check-certificate https://apt.llvm.org/llvm.sh && chmod +x llvm.sh && ./llvm.sh 14
apt-get install -y curl
curl -k https://apt.llvm.org/llvm.sh -o llvm.sh && chmod +x llvm.sh && ./llvm.sh 14
cmake -DWITH_TESTS=ON -DCMAKE_BUILD_TYPE=Release ..
find /usr -name "*lld-config.cmake*" -o -name "*LLDConfig.cmake*"
export LLD_DIR=/usr/lib/llvm-14/lib/cmake/lld && cmake -DWITH_TESTS=ON -DCMAKE_BUILD_TYPE=Release ..
curl -k https://apt.llvm.org/llvm.sh -o llvm.sh && chmod +x llvm.sh && ./llvm.sh 14
cmake -DWITH_TESTS=ON -DCMAKE_BUILD_TYPE=Release ..

