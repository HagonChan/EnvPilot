
find_file '*.yml'
open "/testbed/.github/workflows/main.yml"
find_file requirements.txt
find_file setup.py
open "/testbed/python/setup.py"
find_file 'README*'
open "/testbed/README.md"
apt update && apt install -y cmake build-essential
cmake -G "Unix Makefiles"
make -j
./flattests
