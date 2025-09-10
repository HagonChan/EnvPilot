ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y g++-13 clang++-18 cmake make
CXX=g++-13 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
g++-13 --version && clang++-18 --version
apt-cache search g++ | grep ^g\+\+
apt-get install -y g++ clang
g++ --version && clang++ --version
CXX=g++-11 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
make
./flattests
