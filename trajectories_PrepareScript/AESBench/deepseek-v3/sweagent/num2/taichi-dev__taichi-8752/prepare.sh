ls -la
ls -la .github/workflows
open ".github/workflows/testing.yml"
search_file test .github/workflows/testing.yml
find_file unix_test.sh .github/workflows/scripts
open ".github/workflows/scripts/unix_test.sh"
open ".github/workflows/scripts/build.py"
find_file ti_build .
find_file requirements.txt .
open "benchmarks/requirements.txt"
find_file setup.py .
open "setup.py"
open "version.txt"
apt-get update && apt-get install -y python3-pip cmake && pip3 install scikit-build
pip3 install -e .
apt-get install -y llvm-12 llvm-12-dev
pip3 install -e .
apt-get install -y clang
pip3 install -e .
open "CMakeLists.txt"
apt-get install -y ccache
apt-get install -y lld
apt-get install -y mold
pip3 install -e .
clang --version
ls -la _skbuild/linux-x86_64-3.10/cmake-build
open "_skbuild/linux-x86_64-3.10/cmake-build/CMakeCache.txt"
open "_skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/CMakeError.log"
open "_skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/CMakeOutput.log"
find _skbuild/ -name "*.log" -o -name "*.err"
mkdir -p build && cd build && cmake ..
pip3 install pybind11 && apt-get install -y pybind11-dev
cd build && cmake ..
mkdir -p build && cd build && cmake ..
git submodule update --init --recursive
cd build && cmake ..
mkdir -p build && cd build && cmake ..
cd /testbed && mkdir -p build && cd build && cmake ..
apt-get install -y libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev
cd /testbed/build && cmake ..
cd /testbed/build && make -j$(nproc)
cd /testbed/build && make -j2
apt-get install -y libgl1-mesa-dev
cd /testbed/build && make -j2
cd /testbed && python3 tests/run_tests.py
pip3 install pytest
cd /testbed && python3 tests/run_tests.py
pip3 install cffi
cd /testbed && python3 tests/run_tests.py

