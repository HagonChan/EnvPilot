ls -la
ls -la .github/workflows
open ".github/workflows/testing.yml"
search_file 'apt-get install' .github/workflows/testing.yml
open ".github/workflows/build.yaml"
apt-get update && apt-get install -y clang-tidy-10 libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev gcc make libssl-dev
apt-get install -y clang-tidy libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev gcc make libssl-dev
ls /usr/bin/python*
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update
apt-get install -y python3.7 python3.8 python3.9
python3.7 -m ensurepip --upgrade
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
apt-get install -y curl
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3.7 get-pip.py
curl https://bootstrap.pypa.io/pip/3.7/get-pip.py -o get-pip.py
python3.7 get-pip.py
apt-get install -y python3.7-distutils
python3.7 get-pip.py
python3.8 -m ensurepip --upgrade
curl https://bootstrap.pypa.io/pip/3.8/get-pip.py -o get-pip.py
python3.8 get-pip.py
apt-get install -y python3.8-distutils
apt-get clean
apt-get install -y python3.8-distutils
python3.7 --version && python3.10 --version && pip3.7 --version && pip3.10 --version
python3.10 -m ensurepip --upgrade
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3.10 get-pip.py
pip3.10 --version
ls -la
pip3.10 install -r requirements_dev.txt
pip3.10 install -r requirements_test.txt
pip3.10 install -e .
pytest
pip3.10 uninstall -y taichi
pip3.10 install -e . --verbose
mkdir -p build && cd build && cmake ..
apt-get install -y g++
apt-get clean
apt-get install -y g++
pytest
open "pyproject.toml"
open "setup.py"
find . -name "test_*.py"
find . -name "*.py" | grep -i test
open ".github/workflows/testing.yml"

