ls -la
ls -la .github/workflows
open ".github/workflows/testing.yml"
goto 500
open ".github/workflows/scripts/common-utils.sh"
open "README.md"
open "setup.py"
open "requirements_dev.txt"
open "requirements_test.txt"
sudo apt-get update && sudo apt-get install -y cmake clang-tidy-10 libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev gcc make libssl-dev
apt-get update && apt-get install -y cmake clang-tidy-10 libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev gcc make libssl-dev
apt-get install -y clang-tidy
python3 -m venv venv
apt-get install -y python3.10-venv
python3 -m venv venv
source venv/bin/activate && pip install -r requirements_dev.txt && pip install -r requirements_test.txt
source venv/bin/activate && pip install pytest-xdist
source venv/bin/activate && python setup.py build
apt-get install -y gcc
source venv/bin/activate && python setup.py build
apt-get install -y g++
source venv/bin/activate && python setup.py build
apt-get install -y ninja-build
source venv/bin/activate && python setup.py build
apt-get install -y python3.10-dev
source venv/bin/activate && python setup.py build
apt-get install -y llvm-14-dev
open "CMakeLists.txt"
export LLVM_DIR=/usr/lib/llvm-14/cmake/ && source venv/bin/activate && python setup.py build
apt-get install -y nvidia-cuda-toolkit
export LLVM_DIR=/usr/lib/llvm-14/cmake/ && source venv/bin/activate && python setup.py build
apt-get install -y libvulkan-dev
export LLVM_DIR=/usr/lib/llvm-14/cmake/ && source venv/bin/activate && python setup.py build
apt-get install -y nvidia-driver-535
export LLVM_DIR=/usr/lib/llvm-14/cmake/ && source venv/bin/activate && python setup.py build
export CUDA_HOME=/usr/local/cuda && source venv/bin/activate && python setup.py build
ls /usr/local/cuda
find /usr -name "cuda" -type d 2>/dev/null
export CUDA_HOME=/usr/lib/cuda && export LLVM_DIR=/usr/lib/llvm-14/cmake/ && source venv/bin/activate && python setup.py build
ls /usr/lib/cuda
export CUDA_TOOLKIT_ROOT_DIR=/usr/lib/cuda && export CUDA_HOME=/usr/lib/cuda && export LLVM_DIR=/usr/lib/llvm-14/cmake/ && source venv/bin/activate && python setup.py build
ls /usr/lib/cuda/bin
apt-get install -y cuda
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin && mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600 && apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/3bf863cc.pub && add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/ /" && apt-get update && apt-get install -y cuda
apt-get install -y wget
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin && mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600 && apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/3bf863cc.pub && add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/ /" && apt-get update && apt-get install -y cuda
apt-get install -y software-properties-common
add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/ /" && apt-get update && apt-get install -y cuda
wget https://developer.download.nvidia.com/compute/cuda/12.2.2/local_installers/cuda-repo-ubuntu2204-12-2-local_12.2.2-535.104.05-1_amd64.deb

