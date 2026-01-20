ls -la
ls -la .github/workflows
open ".github/workflows/cmake-all.yml"
open ".github/install.sh"
sudo apt-get update && sudo apt-get install -y libboost-dev libboost-program-options-dev libmpfr-dev libeigen3-dev
apt-get update && apt-get install -y libboost-dev libboost-program-options-dev libmpfr-dev libeigen3-dev
apt-get install -y qtbase5-dev libqt5sql5-sqlite libqt5opengl5-dev qtscript5-dev libqt5svg5-dev qttools5-dev qttools5-dev-tools libinsighttoolkit5-dev zsh
apt purge --auto-remove cmake && cd /tmp && wget https://cmake.org/files/v3.18/cmake-3.18.4-Linux-x86_64.sh && sh cmake-3.18.4-Linux-x86_64.sh --skip-license --prefix=/usr/local && rm cmake-3.18.4-Linux-x86_64.sh
apt-get install -y wget
cd /tmp && wget https://cmake.org/files/v3.18/cmake-3.18.4-Linux-x86_64.sh && sh cmake-3.18.4-Linux-x86_64.sh --skip-license --prefix=/usr/local && rm cmake-3.18.4-Linux-x86_64.sh
cmake --version
cd /testbed
mkdir build && cd build && cmake .. -DENABLE_EXAMPLES=ON -DENABLE_TESTS=ON -DENABLE_DEMOS=ON
apt-get install -y build-essential
cmake .. -DENABLE_EXAMPLES=ON -DENABLE_TESTS=ON -DENABLE_DEMOS=ON
cmake .. -DCMAKE_BUILD_TYPE=Release -DENABLE_EXAMPLES=ON -DENABLE_TESTS=ON -DENABLE_DEMOS=ON
make -j$(nproc)
ctest --output-on-failure
ls -la ../Testsuite
cmake .. -DENABLE_TESTS=ON && make -j$(nproc)
ctest --output-on-failure
ls -la ../Testsuite/test
open "../Testsuite/CMakeLists.txt"
open "../CMakeLists.txt"
cmake .. -DBUILD_TESTING=ON -DCMAKE_BUILD_TYPE=Release -DENABLE_EXAMPLES=ON -DENABLE_TESTS=ON -DENABLE_DEMOS=ON && make -j$(nproc)
ctest --output-on-failure
ls -la ../Testsuite
open "../Testsuite/CMakeLists.txt"
search_file Testsuite ../CMakeLists.txt
ls -la ../Testsuite/test
open "../README.md"
find ../Testsuite -type f -executable
ls -la ../Testsuite
