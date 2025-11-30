

find_file '*.yml'
open "/testbed/tests/lib/shunit2/.travis.yml"
find_file test_runner
open "/testbed/tests/lib/shunit2/test_runner"
apt-get update
apt-get install -y ksh zsh
./tests/lib/shunit2/test_runner
find_file '*' lib
find_file versions lib
find_file 'README*'
open "/testbed/README.md"
mkdir build
cmake .. -B build
apt-get install -y cmake
cmake .. -B build
cmake ..
cd build && cmake ..
apt-get install -y g++
cmake ..
apt-get install -y flex bison
cmake ..
make
make CXXFLAGS='-Wno-error'}
find_file CMakeLists.txt
find_file CMakeLists.txt lib
find_file CMakeLists.txt tests
find_file '*' lib
./tests/lib/shunit2/test_runner
cd tests/lib/shunit2 && ./test_runner
find_file test_runner tests
