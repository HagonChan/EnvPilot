ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
sudo apt-get update
apt-get update
apt-get install -y g++-13 clang-18 cmake
apt-get install -y g++-13 cmake
CXX=g++-13 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
which g++-13
g++ --version
apt-get install -y g++
g++ --version
apt-cache search g++-13
CXX=g++-11 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
make -j
./flattests

