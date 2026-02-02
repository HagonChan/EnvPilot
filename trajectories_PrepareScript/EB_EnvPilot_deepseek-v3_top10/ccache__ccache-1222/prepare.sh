ls -la
ls -la .github/workflows
open ".github/workflows/build.yaml"
apt-get update && apt-get install -y elfutils libhiredis-dev libzstd-dev ninja-build pkg-config python3 redis-server redis-tools binutils lld g++-multilib g++-8 g++-9 g++-10 g++-11 g++-12 clang-9 clang-10 clang-11 clang-12 lld-9 lld-10 lld-11 lld-12 lib32stdc++-10-dev mingw-w64 wine clang-12 clang-tidy-12 asciidoctor python3-pip build-essential git cmake libstdc++6 libc6-dev
apt-get update && apt-get install -y elfutils libhiredis-dev libzstd-dev ninja-build pkg-config python3 redis-server redis-tools binutils lld g++-multilib g++-11 g++-12 clang-11 clang-12 lld-11 lld-12 lib32stdc++-10-dev mingw-w64 wine clang-tidy-12 asciidoctor python3-pip build-essential git cmake libstdc++6 libc6-dev
mkdir -p build && cd build
cmake -G Ninja -DCTEST_OUTPUT_ON_FAILURE=ON -DVERBOSE=1 ..
ninja

