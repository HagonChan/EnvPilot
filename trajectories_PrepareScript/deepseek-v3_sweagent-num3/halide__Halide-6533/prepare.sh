ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
goto 200
goto 400
sudo apt-get update && sudo apt-get install -y gcc g++ libjpeg-dev libpng-dev
apt-get update && apt-get install -y gcc g++ libjpeg-dev libpng-dev
apt-get install -y llvm-12
ls -la CMakeLists.txt
mkdir -p build && cd build && cmake ..
apt-get install -y cmake
cmake ..
apt-get install -y clang-12
cmake -DCMAKE_BUILD_TYPE=Release ..
apt-get install --reinstall -y clang-12
cmake -DCMAKE_BUILD_TYPE=Release ..
apt-get install -y llvm-12-dev
apt-get install -y libclang-12-dev
cmake -DCMAKE_BUILD_TYPE=Release ..
apt-get install -y lld-12
cmake -DCMAKE_BUILD_TYPE=Release ..
apt-get install -y lld-12-dev
find /usr/lib/llvm-12 -name "*lld*Config.cmake" -o -name "*LLD*Config.cmake"
cd .. && ls -la Makefile
make
apt-get install -y llvm-12-tools
find /usr -name "llvm-config"
export PATH=$PATH:/usr/lib/llvm-12/bin && make
make test_correctness
make test_error
make test_warning
make test_generator
make test_tutorial
open "test/correctness/simd_op_check.cpp"
open "Makefile"
echo $HL_TARGET
export HL_TARGET=host-avx512 && make test_correctness
export HL_TARGET=host-avx2 && make test_correctness
export HL_TARGET=host-sse41 && make test_correctness
lscpu
export HL_TARGET=host-no_avx && make test_correctness
export HL_TARGET=x86-64-linux && make test_correctness
bin/correctness_simd_op_check
bin/correctness_vector_math
export HL_TARGET=x86-64-linux-no_avx-no_sse41 && bin/correctness_vector_math
export HL_TARGET=x86-32-linux && bin/correctness_vector_math
export HL_TARGET=wasm-32-wasmrt && bin/correctness_vector_math
