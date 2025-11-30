ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/linux_builds.yml"
apt-get update && apt-get install -y python3-dev build-essential mesa-vulkan-drivers libwayland-bin 7za unzip strip chmod lipo emcc gcc make libssl-dev python3-pip vulkan-sdk dotnet-sdk-8.0
apt-get update && apt-get install -y python3-dev build-essential mesa-vulkan-drivers libwayland-bin p7zip-full unzip binutils gcc make libssl-dev python3-pip
pip install scons
find . -name '*test*'
find . -name 'SConstruct' -o -name 'SConscript'
open "SConstruct"
scroll_down
scroll_down
scroll_down
scons tests=True
apt-get install -y pkg-config
scons platform=linux tests=True
ls -la tests
python3 tests/create_test.py
open "tests/create_test.py"
ls -la tests/core
python3 tests/create_test.py HashingContext
python3 tests/create_test.py HashingContext core
find tests -name 'test_main.cpp'
open "tests/test_main.cpp"
scroll_up
grep -i 'test' SConstruct
open "tests/SCsub"
grep -i 'run' SConstruct
ls -la tests
scons platform=linux tests=True
ls -la tests
g++ tests/test_main.cpp -o tests/test_main
g++ -I./core -I./tests tests/test_main.cpp -o tests/test_main
ls -la core
ls -la core/error
g++ -I./core -I./tests -I./core/error tests/test_main.cpp -o tests/test_main
scroll_up
edit 'env.tests_sources = []' 'env.tests_sources = ['"'"'test_main.cpp'"'"']' True
scons platform=linux tests=True
ls -la tests
grep -i 'run' tests/SCsub
grep -i 'target' SConstruct
g++ -I./core -I./tests -I./core/error tests/test_main.cpp -o tests/test_main
ls -la core/error
g++ -I./core -I./tests -I./core/error tests/test_main.cpp -o tests/test_main
scroll_up
g++ -I./core -I./tests -I./core/error tests/test_main.cpp -o tests/test_main
scroll_up
g++ -I./core -I./tests -I./core/error tests/test_main.cpp -o tests/test_main

