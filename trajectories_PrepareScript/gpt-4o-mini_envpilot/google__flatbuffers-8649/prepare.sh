ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y clang cmake make g++
CXX=g++-13 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
apt-get install -y g++-13
CXX=g++-13 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
update-alternatives --display g++
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-13 100
which g++
ls /usr/bin/g++*
apt-get install -y g++
CXX=g++-11 cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
make
./flattests
