ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y g++-13 clang-18
apt-get install -y g++-13
CXX=g++-13 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
apt-get install -y cmake
CXX=g++-13 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
which g++-13 || find /usr/bin -name "g++-13" || find /usr -name "g++-13"
apt-get install --reinstall -y g++-13
apt-cache search g++ | grep "^g\+\+"
open "CMakeLists.txt"
apt-get install -y g++-12
CXX=g++-12 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
make -j
./flattests
