
find_file '*.yml'
open ".github/workflows/main.yml"
open ".github/workflows/python_tests.yml"
python3 --version
apt update
apt install -y python3.10 python3.10-dev python3.10-venv
bash ops/pipeline/test-python-with-sysprefix.sh
apt install -y cmake
bash ops/pipeline/test-python-with-sysprefix.sh
cd build
cmake .. -GNinja
apt install -y ninja-build
cmake .. -GNinja
apt install -y g++
cmake .. -GNinja
find_file dmlc-core
git clone https://github.com/dmlc/dmlc-core.git
mkdir dmlc-core
cmake .. -GNinja
find_file '*test*'
