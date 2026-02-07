ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y cmake make g++-13 clang++-18
CXX=g++-13 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
g++ --version
apt-get install -y g++
g++ --version
apt-get install -y g++-13
apt-get install -y clang++-18
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
make -j
./flattests
