ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y g++-13 clang++-18 cmake make
CXX=g++-13 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
which g++-13
apt list --installed | grep g++-13
apt-get install -y g++-13
CXX=clang++-18 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
which clang++-18
apt-get install -y clang-18
g++ --version && clang++ --version
apt-get install -y g++ clang
g++ --version && clang++ --version
CXX=g++ cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
make -j
./flattests
