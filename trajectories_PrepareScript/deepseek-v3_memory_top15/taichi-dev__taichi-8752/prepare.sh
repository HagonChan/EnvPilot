ls -la
ls -la .github/workflows
open ".github/workflows/testing.yml"
search_file apt-get .github/workflows/testing.yml
search_file pip .github/workflows/testing.yml
search_file python .github/workflows/testing.yml
open "setup.py"
open "requirements_test.txt"
apt-get update && apt-get install -y clang cmake make g++ libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev
apt-get install -y python3.9 python3.9-venv && python3.9 -m venv .venv
apt-get install -y python3-venv && python3.9 -m venv .venv
ls /usr/bin/python*
python3.10 -m venv .venv
. .venv/bin/activate && pip install -r requirements_test.txt
. .venv/bin/activate && python setup.py build
. .venv/bin/activate && pip install scikit-build
. .venv/bin/activate && python setup.py build
. .venv/bin/activate && pip install pybind11
. .venv/bin/activate && python setup.py build
apt-get install -y ninja-build
. .venv/bin/activate && python setup.py build
rm -rf _skbuild/
. .venv/bin/activate && python setup.py build
ls -la CMakeLists.txt
apt-get install -y clang-10
apt-get install -y clang-14
. .venv/bin/activate && CC=clang-14 CXX=clang++-14 python setup.py build
apt-get install -y python3.10-dev
. .venv/bin/activate && CC=clang-14 CXX=clang++-14 python setup.py build
apt-get install -y clang-tidy-10
. .venv/bin/activate && CC=clang-14 CXX=clang++-14 python setup.py build
nvcc --version
apt-get install -y nvidia-cuda-toolkit
nvcc --version
apt-get install -y llvm
. .venv/bin/activate && CC=clang-14 CXX=clang++-14 python setup.py build
cat _skbuild/linux-x86_64-3.10/cmake-build/CMakeFiles/CMakeOutput.log
apt-get install -y clang-tidy-10
. .venv/bin/activate && CC=clang-14 CXX=clang++-14 python setup.py build
apt-get install -y clang-tidy-10
. .venv/bin/activate && CC=clang-14 CXX=clang++-14 python setup.py build
apt-get install -y clang-tidy-10
. .venv/bin/activate && CC=clang-14 CXX=clang++-14 python setup.py build
apt-get install -y clang-tidy-10
. .venv/bin/activate && CC=clang-14 CXX=clang++-14 python setup.py build
apt-get install -y clang-tidy-10
. .venv/bin/activate && CC=clang-14 CXX=clang++-14 python setup.py build
apt-get install -y clang-tidy-10
. .venv/bin/activate && CC=clang-14 CXX=clang++-14 python setup.py build

