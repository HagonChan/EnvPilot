ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y g++-13 clang++-18 cmake make
apt-get install -y g++-13 clang++-18 cmake make
CXX=g++-13 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
g++-13 --version
g++ --version
apt-get install -y g++
g++ --version
apt-get install -y g++-13
add-apt-repository -y ppa:ubuntu-toolchain-r/test && apt-get update
apt-get install -y software-properties-common
add-apt-repository -y ppa:ubuntu-toolchain-r/test && apt-get update
apt-cache search g++ | grep 13
CXX=clang++-13 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
make -j
./flattests
