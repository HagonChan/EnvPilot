ls -la
ls -la .github/workflows
open "azure-pipelines.yml"
open "README.md"
mkdir -p build && cd build
cmake .. -DUSE_HTTPS=OpenSSL
sudo apt-get update && sudo apt-get install -y cmake
apt-get update && apt-get install -y cmake
cmake .. -DUSE_HTTPS=OpenSSL
cmake --build .
./libgit2_clar
