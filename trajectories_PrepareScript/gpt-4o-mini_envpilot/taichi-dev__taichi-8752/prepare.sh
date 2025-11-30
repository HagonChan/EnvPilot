
find_file '*.yml'
open "/testbed/.github/workflows/testing.yml"
scroll_down
apt-get update && apt-get install -y clang cmake make clang-tidy-10 libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev python3.11 python3.11-venv python3.11-dev python3-pip
apt-get install -y clang-tidy libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev
python3.11 -m venv .venv && .venv/bin/activate && pip install --upgrade taichi
ls /usr/bin/python*
python3.10 -m venv .venv && .venv/bin/activate && pip install --upgrade taichi
apt-get install -y python3.10-venv
python3.10 -m venv .venv && .venv/bin/activate && .venv/bin/pip install --upgrade taichi
python3.10 -m venv .venv
.venv/bin/pip install --upgrade taichi
open "/testbed/.github/workflows/scripts/unix_test.sh"
.venv/bin/python .github/workflows/scripts/unix_test.sh
bash .github/workflows/scripts/unix_test.sh
apt-get install -y freeglut3-dev libglm-dev libjpeg-dev liblz4-dev libpng-dev libssl-dev libx11-xcb-dev libxcb-dri3-dev libxcb-ewmh-dev libxcb-keysyms1-dev libxcb-randr0-dev libzstd-dev
bash .github/workflows/scripts/unix_test.sh
apt-get install -y xz-utils
bash .github/workflows/scripts/unix_test.sh
ls dist
open "/testbed/.github/workflows/scripts/build.py"
find_file entry.py ti_build
ls -la
open "/testbed/setup.py"
python3.10 setup.py bdist_wheel
.venv/bin/pip install setuptools wheel
python3.10 setup.py bdist_wheel
. .venv/bin/activate && python setup.py bdist_wheel
.venv/bin/pip install scikit-build
python setup.py bdist_wheel
cmake --version
apt-get install -y cmake
python setup.py bdist_wheel
apt-get install -y g++
python setup.py bdist_wheel
.venv/bin/pip install pybind11
python setup.py bdist_wheel
cat _skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/CMakeError.log
cat _skbuild/linux-x86_64-3.10/cmake-build/CMakeOutput.log
python setup.py clean
python setup.py bdist_wheel
cmake -S . -B _skbuild/linux-x86_64-3.10/cmake-build -G 'Unix Makefiles'
find_file .gitmodules
open "/testbed/.gitmodules"
git submodule update --init --recursive
python setup.py bdist_wheel
apt-get install -y python3.10-dev
python setup.py bdist_wheel

