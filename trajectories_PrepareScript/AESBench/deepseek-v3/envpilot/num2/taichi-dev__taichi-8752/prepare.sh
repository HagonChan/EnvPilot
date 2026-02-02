ls -la
ls -la .github/workflows
open ".github/workflows/testing.yml"
apt-get update && apt-get install -y clang-tidy-10 libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev gcc make libssl-dev
apt-get update && apt-get install -y clang-tidy libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev gcc make libssl-dev
open "requirements_dev.txt"
open "requirements_test.txt"
pip install --upgrade -r requirements_dev.txt
apt-get install -y python3-pip
pip install --upgrade -r requirements_dev.txt
pip install --upgrade -r requirements_test.txt
ls -la CMakeLists.txt
mkdir -p build && cd build && cmake .. && make
pip install --upgrade pybind11
apt-get install -y pybind11-dev
apt-get clean
apt-get install -y pybind11-dev
apt-get autoremove -y
rm -rf /var/lib/apt/lists/*
apt-get install -y pybind11-dev
pip install --upgrade pybind11
open "CMakeLists.txt"
cd .. && ls -la CMakeLists.txt
open "CMakeLists.txt"
edit '# This compiles all the libraries with -fPIC, which is critical to link a static
# library into a shared lib.
set(CMAKE_POSITION_INDEPENDENT_CODE ON)' '# This compiles all the libraries with -fPIC, which is critical to link a static
# library into a shared lib.
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# Find pybind11
find_package(pybind11 REQUIRED)'
cd build && cmake .. && make
pip show pybind11 | grep Location
ls -la /usr/local/lib/python3.10/dist-packages/pybind11/share/cmake/pybind11
edit '# Find pybind11
find_package(pybind11 REQUIRED)' '# Find pybind11
list(APPEND CMAKE_PREFIX_PATH "/usr/local/lib/python3.10/dist-packages/pybind11/share/cmake/pybind11")
find_package(pybind11 REQUIRED)'
cd build && cmake .. && make
mkdir -p build && cd build && cmake .. && make
git submodule update --init --recursive
cd build && cmake .. && make
mkdir -p build && cd build && cmake .. && make
cd .. && mkdir -p build && cd build && cmake .. && make
cd /testbed && mkdir -p build && cd build && cmake .. && make
cd .. && pytest
pip install --upgrade taichi
pip install --upgrade taichi --trusted-host pypi.org --trusted-host files.pythonhosted.org
PYTHONHTTPSVERIFY=0 pip install --upgrade taichi --trusted-host pypi.org --trusted-host files.pythonhosted.org
find . -name "*.whl"
cd .. && pytest
