ls -la
ls -la .github/workflows
open ".github/workflows/testing.yml"
apt-get update && apt-get install -y clang-tidy-10 libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev gcc make libssl-dev
apt-cache search clang-tidy
apt-get install -y clang-tidy-11
apt-get install -y libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev zlib1g-dev libglew-dev libglfw3-dev gcc make libssl-dev
python3 --version && pip --version
apt-get install -y python3-pip
pip --version
python3 -m venv venv
apt-get install -y python3.10-venv
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
ls -la
pip install -e .
pip install -r requirements_test.txt
pytest
python build.py
apt-get install -y freeglut3-dev libglm-dev libjpeg-dev liblz4-dev libpng-dev libx11-xcb-dev libxcb-dri3-dev libxcb-ewmh-dev libxcb-keysyms1-dev libxcb-randr0-dev libzstd-dev
python build.py
mkdir -p build && cd build && cmake ..
apt-get install -y cmake
cmake ..
pip install pybind11
cmake ..
apt-get install -y pybind11-dev
cmake ..
git submodule update --init --recursive
cmake ..
make -j$(nproc)
cmake -DCMAKE_CXX_COMPILER=clang-11 ..
make -j$(nproc)
cat taichi/runtime/cpu/CMakeFiles/cpu_runtime.dir/build.make taichi/runtime/cuda/CMakeFiles/cuda_runtime.dir/build.make
make VERBOSE=1 -j$(nproc)
make VERBOSE=1 -C taichi/runtime/cpu
apt-get install -y llvm-11-dev
find /usr -name TargetRegistry.h
find /testbed -name CMakeLists.txt
open "/testbed/taichi/runtime/cpu/CMakeLists.txt"
edit 'target_include_directories(cpu_runtime
  PRIVATE
    ${PROJECT_SOURCE_DIR}
    ${PROJECT_SOURCE_DIR}/external/eigen
    ${PROJECT_SOURCE_DIR}/external/spdlog/include
    ${LLVM_INCLUDE_DIRS}
  )' 'target_include_directories(cpu_runtime
  PRIVATE
    ${PROJECT_SOURCE_DIR}
    ${PROJECT_SOURCE_DIR}/external/eigen
    ${PROJECT_SOURCE_DIR}/external/spdlog/include
    ${LLVM_INCLUDE_DIRS}
    /usr/include/llvm-11
  )'
make -j$(nproc)
make VERBOSE=1 -C taichi/runtime/cpu
find /usr/include/llvm-11 -name TargetRegistry.h
open "/testbed/taichi/runtime/cpu/jit_cpu.cpp"
edit '#include "llvm/MC/TargetRegistry.h"' '#include "llvm/Support/TargetRegistry.h"'
make -j$(nproc)
open "/testbed/taichi/runtime/cuda/jit_cuda.cpp"

