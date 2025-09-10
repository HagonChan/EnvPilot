ls -la
ls -la .github/workflows
open ".github/workflows/testing.yml"
search_file python .github/workflows/testing.yml
search_file apt-get .github/workflows/testing.yml
search_file install .github/workflows/testing.yml
apt-get update && apt-get install -y clang-tidy-10 libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev gcc make libssl-dev
apt-get install -y clang-tidy libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev gcc make libssl-dev
clang-tidy --version && gcc --version && cmake --version
apt-get install -y cmake
cmake --version
python3 --version
ls -la
open "requirements_test.txt"
pip install -r requirements_test.txt
apt-get install -y python3-pip
pip3 install -r requirements_test.txt
pip3 install -e .
nvcc --version
apt-get install -y llvm
llvm-config --version
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin && mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600 && apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/3bf863cc.pub && add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/ /" && apt-get update && apt-get -y install cuda
apt-get install -y wget
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin && mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600 && apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/3bf863cc.pub && add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/ /" && apt-get update && apt-get -y install cuda
apt-get install -y software-properties-common
add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/ /" && apt-get update && apt-get -y install cuda
search_file pytest .github/workflows/testing.yml
pytest
pytest -k "not cuda"
pip3 show taichi
pip3 install -e .
open "CMakeLists.txt"
search_file TI_WITH_CUDA CMakeLists.txt
edit 'option(TI_WITH_CUDA "Enable CUDA support" ON)' 'option(TI_WITH_CUDA "Enable CUDA support" OFF)' True
search_file 'option.*TI_WITH_CUDA' CMakeLists.txt
edit 'option(USE_LLD "Use lld (from llvm) linker" OFF)' 'option(USE_LLD "Use lld (from llvm) linker" OFF)
option(TI_WITH_CUDA "Enable CUDA support" OFF)'
pip3 install -e .
search_file pytest .github/workflows/testing.yml
find . -name "test_*.py" -o -name "run_tests.sh"
pytest tests/python/
create test_minimal.py
insert 'import taichi as ti

ti.init(arch=ti.cpu)

@ti.kernel
def test():
    print("Hello, Taichi!")

test()'
python3 test_minimal.py
