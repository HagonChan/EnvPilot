
find_file '*.yml'
find_file '*.yaml'
open "/testbed/.github/workflows/build.yaml"
goto 100
sudo apt-get update && sudo apt-get install -y elfutils libhiredis-dev libzstd-dev ninja-build pkg-config python3 redis-server redis-tools
apt-get update && apt-get install -y elfutils libhiredis-dev libzstd-dev ninja-build pkg-config python3 redis-server redis-tools
ci/build
apt-get install -y cmake
ci/build
apt-get install -y g++
ci/build
CMAKE_GENERATOR=Ninja ci/build
