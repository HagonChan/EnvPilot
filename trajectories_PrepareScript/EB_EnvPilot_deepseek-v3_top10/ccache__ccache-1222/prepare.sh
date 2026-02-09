ls -la
ls -la .github/workflows
open ".github/workflows/build.yaml"
open "README.md"
open "doc/INSTALL.md"
sudo apt-get update && sudo apt-get install -y elfutils libhiredis-dev libzstd-dev ninja-build pkg-config python3 redis-server redis-tools binutils lld g++-multilib g++-8 g++-9 g++-10 g++-11 g++-12 clang-9 clang-10 clang-11 clang-12 lld-9 lld-10 lld-11 lld-12 gcc-multilib lib32stdc++-10-dev mingw-w64 wine clang-12 clang-tidy-12 asciidoctor build-essential git cmake libc6-dev
apt-get update && apt-get install -y elfutils libhiredis-dev libzstd-dev ninja-build pkg-config python3 redis-server redis-tools binutils lld g++-multilib g++-8 g++-9 g++-10 g++-11 g++-12 clang-9 clang-10 clang-11 clang-12 lld-9 lld-10 lld-11 lld-12 gcc-multilib lib32stdc++-10-dev mingw-w64 wine clang-12 clang-tidy-12 asciidoctor build-essential git cmake libc6-dev
apt-get update && apt-get install -y elfutils libhiredis-dev libzstd-dev ninja-build pkg-config python3 redis-server redis-tools binutils lld g++-multilib g++-9 g++-10 g++-11 g++-12 clang-11 clang-12 lld-11 lld-12 gcc-multilib lib32stdc++-10-dev mingw-w64 wine clang-12 clang-tidy-12 asciidoctor build-essential git cmake libc6-dev
mkdir -p build && cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j$(nproc)
make install
ccache --version
ctest --output-on-failure
