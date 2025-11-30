ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/tdengine-build.yml"
open ".github/workflows/tdengine-test.yml"
open "README.md"
scroll_down
apt-get update && apt-get install -y gcc cmake build-essential git libjansson-dev libsnappy-dev liblzma-dev zlib1g-dev pkg-config
./build.sh
./build.sh bld
mkdir debug
./build.sh bld
./build.sh gen
./build.sh bld
ls -la debug
open "debug/CMakeCache.txt"
open "debug/Makefile"
ctest --force-new-ctest-process
ls -la tests
ls -la tests/pytest
pytest tests/pytest
pip install pytest
apt-get install -y python3-pip
pip3 install pytest
pytest tests/pytest
./build.sh install
./build.sh bld
apt-get install -y golang
./build.sh bld
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
./build.sh bld
open "tools/keeper/go.mod"
edit 'go 1.23.0' 'go 1.23'
./build.sh bld
open "debug/Makefile"
rm -rf debug

rm -rf debug
mkdir debug
./build.sh gen
./build.sh bld
open "debug/Makefile"
rm -rf debug
mkdir debug
./build.sh gen
./build.sh bld
open "debug/Makefile"

