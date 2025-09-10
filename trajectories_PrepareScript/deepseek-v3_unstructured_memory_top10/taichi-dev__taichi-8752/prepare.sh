ls -la
ls -la .github/workflows
open ".github/workflows/testing.yml"
open "requirements_test.txt"
open "README.md"
apt-get update && apt-get install -y clang-tidy-10 libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev llvm@15 gcc make libssl-dev
apt-cache search clang-tidy | grep clang-tidy && apt-cache search llvm | grep llvm
apt-get install -y clang-tidy-15 llvm-15
python3 -m pip install -r requirements_test.txt
apt-get install -y python3-pip
python3 -m pip install -r requirements_test.txt
python3 --version
open "CMakeLists.txt"
open "setup.py"
python3 setup.py install
python3 -m pip install scikit-build
python3 setup.py install
apt-get install -y cmake
python3 setup.py install
python3 -m pip install pybind11
python3 setup.py install
apt-get install -y ninja-build
python3 setup.py install
rm -rf _skbuild/
python3 setup.py install
nvcc --version
apt-get install -y nvidia-cuda-toolkit
nvcc --version
llvm-config --version
apt-get install -y llvm-15-dev
find /usr -name llvm-config
export PATH=$PATH:/usr/lib/llvm-15/bin && llvm-config --version
python3 setup.py install
nvcc --version && ls /usr/local/cuda
find /usr -name nvcc
ln -s /usr/lib/nvidia-cuda-toolkit /usr/local/cuda
python3 setup.py install
cat /testbed/_skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/CMakeOutput.log
cat /testbed/_skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/CMakeError.log
mkdir -p build && cd build && cmake .. && make
apt-get install -y pybind11-dev
cd build && cmake .. && make
mkdir -p build && cd build && cmake .. && make
git submodule update --init --recursive
git submodule update --init --recursive
cd build && cmake .. && make
mkdir -p build && cd build && cmake .. && make
cd /testbed && mkdir -p build && cd build && cmake .. && make
apt-get install -y libxrandr-dev

