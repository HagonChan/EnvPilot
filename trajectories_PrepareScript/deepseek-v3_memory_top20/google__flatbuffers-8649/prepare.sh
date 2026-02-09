ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "README.md"
apt-get update && apt-get install -y g++-13 clang++-18 cmake make
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DFLATBUFFERS_STRICT_MODE=ON -DFLATBUFFERS_STATIC_FLATC=ON .
make -j
./flattests
