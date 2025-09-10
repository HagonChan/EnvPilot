ls -la
find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
open "pyproject.toml"
open "requirements_dev.txt"
open "requirements_test.txt"
apt-get update && apt-get install -y clang-tidy-10 libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev gcc make libssl-dev
apt-get install -y clang-tidy libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev gcc make libssl-dev
python3 -m venv .venv
apt-get install -y python3.10-venv
python3 -m venv .venv
. .venv/bin/activate && pip install --upgrade pip
pip install -e .
pip install -r requirements_test.txt
pytest
python setup.py build
pip install scikit-build
python setup.py build
apt-get install -y cmake
python setup.py build
apt-get install -y g++
python setup.py build
pip install pybind11
python setup.py build
apt-get install -y llvm-10 libcuda1
apt-get install -y llvm nvidia-cuda-toolkit
python setup.py build
apt-get install -y python3.10-dev
python setup.py build
apt-get install -y ninja-build
python setup.py build
rm -rf _skbuild/
python setup.py build
apt-get install -y llvm-10 llvm-10-dev
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && echo "deb http://apt.llvm.org/focal/ llvm-toolchain-focal-10 main" >> /etc/apt/sources.list && apt-get update
apt-get install -y wget gnupg
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && echo "deb http://apt.llvm.org/focal/ llvm-toolchain-focal-10 main" >> /etc/apt/sources.list && apt-get update
apt-get install -y llvm-10 llvm-10-dev
python setup.py build
export CLANG_EXECUTABLE=/usr/bin/clang-10 && python setup.py build
apt-get install -y clang-10 && update-alternatives --install /usr/bin/clang clang /usr/bin/clang-10 100
apt-get update && apt-get install -y clang-10 && update-alternatives --install /usr/bin/clang clang /usr/bin/clang-10 100
apt-get install -y clang-10 && update-alternatives --install /usr/bin/clang clang /usr/bin/clang-10 100
export CLANG_EXECUTABLE=/usr/bin/clang-14 && python setup.py build
pip install --upgrade taichi
pytest
pip install --upgrade --force-reinstall taichi
pytest

