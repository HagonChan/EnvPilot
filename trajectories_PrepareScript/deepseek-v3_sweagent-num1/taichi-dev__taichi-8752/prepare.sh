ls -la
ls -la .github/workflows
open ".github/workflows/testing.yml"
goto 200
open "README.md"
open "setup.py"
ls -la requirements*.txt
open "requirements_dev.txt"
open "requirements_test.txt"
pip install -r requirements_dev.txt
apt-get update && apt-get install -y python3-pip
pip install -r requirements_dev.txt
pip install -r requirements_test.txt
grep -v "pytest-xdist" requirements_test.txt > temp_requirements.txt && pip install -r temp_requirements.txt
pip install --no-deps --ignore-requires-python --no-cache-dir --no-binary :all: matplotlib<=3.7.3
pip install --no-deps --ignore-requires-python --no-cache-dir --no-binary :all: "matplotlib<=3.7.3"
python setup.py build
apt-get install -y python3
python3 setup.py build
apt-get install -y llvm-14 llvm-14-dev
python3 setup.py build
apt-get install -y clang-14
python3 setup.py build
ls -la /testbed/_skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/CMakeOutput.log
open "CMakeLists.txt"
apt-get install -y nvidia-cuda-toolkit
apt-get update && apt-get install -y nvidia-cuda-toolkit
sed -i '/security.ubuntu.com/d' /etc/apt/sources.list && apt-get update && apt-get install -y nvidia-cuda-toolkit
python3 setup.py build
ls -la /testbed/_skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/CMakeOutput.log
open "CMakeLists.txt"
python3 setup.py build -- -DLLVM_DIR=/usr/lib/llvm-14/cmake -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda
nvcc --version
python3 setup.py build -- -DLLVM_DIR=/usr/lib/llvm-14/cmake -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-11.5
ls -la /testbed/_skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/CMakeOutput.log
open "CMakeLists.txt"
ls -la /usr/lib/llvm-14/cmake
ls -la /usr/local/cuda-11.5
ls -la /usr/local/cuda*
which nvcc
python3 setup.py build -- -DLLVM_DIR=/usr/lib/llvm-14/cmake -DCUDA_TOOLKIT_ROOT_DIR=/usr
ls -la /usr/lib/x86_64-linux-gnu/libcuda*
python3 setup.py build -- -DLLVM_DIR=/usr/lib/llvm-14/cmake -DCUDA_TOOLKIT_ROOT_DIR=/usr/lib/x86_64-linux-gnu
ls -la /testbed/_skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/CMakeOutput.log
open "CMakeLists.txt"
ls -la /usr/lib/llvm-14/cmake
ls -la /usr/local/cuda
ls -la /usr/local/cuda*
which nvcc

