ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y g++-13 clang++-18 cmake make
CXX=g++-13 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
which g++-13
dpkg -L g++-13
add-apt-repository -y ppa:ubuntu-toolchain-r/test && apt-get update && apt-get install -y g++-13
apt-get install -y software-properties-common
add-apt-repository -y ppa:ubuntu-toolchain-r/test && apt-get update && apt-get install -y g++-13
apt-cache search g++ | grep 13
apt-get install -y g++-12
CXX=g++-12 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
make -j
./flattests

