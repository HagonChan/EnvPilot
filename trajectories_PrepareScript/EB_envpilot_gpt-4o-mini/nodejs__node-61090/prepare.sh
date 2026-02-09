

find_file '*.yml'
open "/testbed/.github/workflows/test-linux.yml"
make --version
apt-get update && apt-get install -y make
apt-get install -y python3.14 python3.14-venv python3.14-dev
apt-get install -y python3.10 python3.10-venv python3.10-dev
apt-get install -y clang-19
apt-get install -y clang
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain 1.82.0 -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain 1.82.0 -y
make
ls -l
./configure
CC=clang ./configure
make
apt-get install -y g++
make
find_file 'README*'
open "/testbed/README.md"
goto 27
scroll_down
scroll_down
scroll_down
scroll_down
scroll_down
scroll_down
scroll_down
scroll_down
scroll_down
find_file Makefile
open "/testbed/Makefile"
goto 1
scroll_down
make
grep "CXXFLAGS" /testbed/Makefile
insert 'CXXFLAGS += -std=c++17' 1
make
edit 'CXXFLAGS += -std=c++17' 'CXXFLAGS += -std=c++14'
make
edit 'CXXFLAGS += -std=c++14' 'CXXFLAGS += -std=c++20'
make
edit 'CXXFLAGS += -std=c++20' 'CXXFLAGS += -std=c++17'
make
edit 'CXXFLAGS += -std=c++17' 'CXXFLAGS += -std=c++14'
make
edit 'CXXFLAGS += -std=c++14' 'CXXFLAGS += -std=c++17'

