ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "README.md"
open "CMakeLists.txt"
ls -la python_bindings/
open "python_bindings/requirements.txt"
sudo apt-get update && sudo apt-get install -y llvm-12 clang-12 python3 python3-pip
apt-get update && apt-get install -y llvm-12 clang-12 python3 python3-pip
pip3 install -r python_bindings/requirements.txt
mkdir -p build && cd build
cmake .. -DWITH_TESTS=ON -DWITH_PYTHON_BINDINGS=ON
apt-get install -y cmake
cmake .. -DWITH_TESTS=ON -DWITH_PYTHON_BINDINGS=ON
apt-get install --reinstall -y llvm-12 clang-12 libclang-12-dev
cmake .. -DWITH_TESTS=ON -DWITH_PYTHON_BINDINGS=ON
apt-get install -y lld-12
cmake .. -DWITH_TESTS=ON -DWITH_PYTHON_BINDINGS=ON
apt-get install -y lld-12-dev
find /usr/lib/llvm-12 -name "*lld*config.cmake" -o -name "*LLD*Config.cmake"
apt-get install -y llvm-11 lld-11 libclang-11-dev
cmake .. -DWITH_TESTS=ON -DWITH_PYTHON_BINDINGS=ON -DLLVM_DIR=/usr/lib/llvm-11/cmake
dpkg -l | grep lld-11-dev
apt-get install -y lld-11-dev
find /usr/lib/llvm-11 -name "*lld*config.cmake" -o -name "*LLD*Config.cmake"
apt-get install -y llvm-10 lld-10 libclang-10-dev
apt-get install -y git cmake ninja-build
git clone https://github.com/llvm/llvm-project.git
git clone --depth 1 https://github.com/llvm/llvm-project.git
apt-cache search llvm | grep lld
apt-get install -y lld-12 liblld-12-dev
find /usr/lib/llvm-12 -name "*LLD*Config.cmake" -o -name "*lld*config.cmake"
cmake .. -DWITH_TESTS=ON -DWITH_PYTHON_BINDINGS=ON -DLLVM_DIR=/usr/lib/llvm-12/cmake -DLLD_DIR=/usr/lib/llvm-12/lib/cmake/lld
cmake .. -DWITH_TESTS=ON -DWITH_PYTHON_BINDINGS=ON -DLLVM_DIR=/usr/lib/llvm-12/cmake -DLLD_DIR=/usr/lib/llvm-12/lib/cmake/lld -DHalide_SHARED_LLVM=YES
make -j$(nproc)
make test
cat /testbed/build/Testing/Temporary/LastTest.log
ctest --rerun-failed --output-on-failure
open "python_bindings/tutorial/lesson_09_update_definitions.py"
find /testbed -name "lesson_09_update_definitions.py"
open "/testbed/python_bindings/tutorial/lesson_09_update_definitions.py"
edit 'result = np.empty((4, 4), dtype=np.int)' 'result = np.empty((4, 4), dtype=int)'
goto 105
edit 'result = np.empty((4, 4), dtype=np.int)' 'result = np.empty((4, 4), dtype=np.int32)' True
edit 'py_result = np.empty((100, 100), dtype=np.int)' 'py_result = np.empty((100, 100), dtype=np.int32)' True
edit 'py_result = np.empty((256), dtype=np.int)' 'py_result = np.empty((256), dtype=np.int32)' True
edit 'py_result = np.empty((16, 16), dtype=np.int)' 'py_result = np.empty((16, 16), dtype=np.int32)' True
edit 'py_result = np.empty((10), dtype=np.int)' 'py_result = np.empty((10), dtype=np.int32)' True
edit 'producer_storage = np.empty((1), dtype=np.int)' 'producer_storage = np.empty((1), dtype=np.int32)' True

