ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y g++-13 clang++-18 cmake make
CXX=g++-13 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
g++-13 --version
apt-cache policy g++-13
apt-get install -y g++-13
apt-get install -y g++-12
g++-12 --version
clang++-18 --version
apt-get install -y clang-18
apt-cache search clang | grep '^clang-'
apt-get install -y clang-15
clang-15 --version
CXX=g++-12 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
make
./flattests
