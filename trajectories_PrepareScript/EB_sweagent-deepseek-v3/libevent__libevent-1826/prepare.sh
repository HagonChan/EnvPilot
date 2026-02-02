ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "README.md"
open "CMakeLists.txt"
mkdir -p build && cd build
cmake ..
sudo apt-get update && sudo apt-get install -y cmake libmbedtls-dev
apt-get update && apt-get install -y cmake libmbedtls-dev
apt-get install -y cmake libmbedtls-dev
cmake ..
make
make verify
