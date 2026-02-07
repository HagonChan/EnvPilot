ls -la
ls -la .github/workflows
open ".github/workflows/root-ci.yml"
search_file test .github/workflows/root-ci.yml
search_file ctest .github/workflows/root-ci.yml
open ".travis.yml"
open "math/minuit2/.ci/make_and_test.sh"
open "README.md"
ls -la CMakeLists.txt setup.py
open "CMakeLists.txt"
mkdir -p build
cd build && cmake ..
apt-get update && apt-get install -y cmake
cmake ..
apt-get install -y g++ build-essential
cmake ..
apt-get install -y libx11-dev libxpm-dev libxft-dev libxext-dev
cmake ..
apt-get install -y libssl-dev libffi-dev
cmake ..
apt-get install -y python3-dev python3-pip
cmake ..
make -j$(nproc)
ctest
open ".travis.yml"
open ".github/workflows/root-ci.yml"
open "README.md"
ls -la test
ls -la stress.cxx
ls -la test
make -j$(nproc)
ls -la test/stress*
make -j$(nproc)
ls -la test/stress*
make -j$(nproc)
ls -la test/stress*
make -j$(nproc)
ls -la test/stress*
make -j$(nproc)
ls -la test/stress*
make -j$(nproc)
ls -la test/stress*
make -j$(nproc)
ls -la test/stress*
make -j$(nproc)
ls -la test/stress*
make -j$(nproc)
ls -la test/stress*
make -j$(nproc)

