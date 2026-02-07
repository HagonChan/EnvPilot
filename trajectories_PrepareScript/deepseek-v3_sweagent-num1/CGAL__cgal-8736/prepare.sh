ls -la
ls -la .github/workflows
open ".github/workflows/cmake-all.yml"
open ".github/install.sh"
sudo apt-get install -y libboost-dev libboost-program-options-dev libmpfr-dev libeigen3-dev
apt-get install -y libboost-dev libboost-program-options-dev libmpfr-dev libeigen3-dev
apt-get update
apt-get install -y libboost-dev libboost-program-options-dev libmpfr-dev libeigen3-dev
apt-get install -y qtbase5-dev libqt5sql5-sqlite libqt5opengl5-dev qtscript5-dev libqt5svg5-dev qttools5-dev qttools5-dev-tools libinsighttoolkit5-dev zsh
apt-get update
apt-get install -y qtbase5-dev libqt5sql5-sqlite libqt5opengl5-dev qtscript5-dev libqt5svg5-dev qttools5-dev qttools5-dev-tools libinsighttoolkit5-dev zsh
wget https://github.com/Kitware/CMake/releases/download/v3.18.4/cmake-3.18.4-Linux-x86_64.sh
apt-get install -y wget
wget https://github.com/Kitware/CMake/releases/download/v3.18.4/cmake-3.18.4-Linux-x86_64.sh
chmod +x cmake-3.18.4-Linux-x86_64.sh

./cmake-3.18.4-Linux-x86_64.sh --skip-license --prefix=/usr/local
cmake --version
mkdir -p build && cd build
cmake -DWITH_tests=ON -DBUILD_TESTING=ON ..
apt-get install -y build-essential
cmake -DWITH_tests=ON -DBUILD_TESTING=ON ..
cmake -DCMAKE_BUILD_TYPE=Release -DWITH_tests=ON -DBUILD_TESTING=ON ..
make -j$(nproc)
ctest
ls -la /home/cgal/build/test
ls -la /home/cgal/build/test/Weights
cmake -DCMAKE_BUILD_TYPE=Release -DWITH_tests=ON -DBUILD_TESTING=ON .. --debug-output
ls -la /home/cgal/test
ls -la /home/cgal | grep -i test
ls -la /home/cgal/Testsuite
ls -la /home/cgal/Testsuite/test
mkdir -p /home/cgal/build/test/Weights/__exec_test_dir
ctest --output-on-failure
find /home/cgal/build/test -type d -name "*test*" -exec mkdir -p {}/__exec_test_dir \;
mkdir -p /home/cgal/build/test/Arrangement_on_surface_2/__exec_test_dir
ctest --output-on-failure
ls -la /home/cgal/build/test
cmake -DCMAKE_BUILD_TYPE=Release -DWITH_tests=ON -DBUILD_TESTING=ON .. --debug-output
make -j$(nproc)
ls -la /home/cgal/build/test/Weights
ls -la /home/cgal/build/test/Weights/CMakeFiles
cat /home/cgal/build/CMakeFiles/CMakeOutput.log
cmake -DCMAKE_BUILD_TYPE=Release -DWITH_tests=ON -DBUILD_TESTING=ON .. --debug-output
make -j$(nproc)
ls -la /home/cgal/build/test/Weights
ls -la /home/cgal/build/test/Weights/CMakeFiles
cat /home/cgal/build/CMakeFiles/CMakeOutput.log
cmake -DCMAKE_BUILD_TYPE=Release -DWITH_tests=ON -DBUILD_TESTING=ON .. --debug-output

