ls -la
find_file '*.yml' .github/workflows
open ".github/workflows/testing.yml"
search_file test .github/workflows/testing.yml
open ".github/workflows/scripts/unix_test.sh"
open "requirements_dev.txt"
open "requirements_test.txt"
pip install -r requirements_dev.txt -r requirements_test.txt
apt-get update && apt-get install -y python3-pip
pip install -r requirements_dev.txt -r requirements_test.txt
open "setup.py"
python setup.py build
python3 setup.py build
search_file LLVM .github/workflows/testing.yml
search_file LLVM setup.py
open "CMakeLists.txt"
open "cmake/TaichiCore.cmake"
apt-get install -y llvm-15 llvm-15-dev clang-15 libclang-15-dev
python3 setup.py build
search_file CUDA CMakeLists.txt
apt-get install -y nvidia-cuda-toolkit
python3 setup.py build
python3 -c "import numpy; print(numpy.__version__)"
cmake --version && ninja --version
search_file Vulkan CMakeLists.txt
search_file Metal CMakeLists.txt
search_file OpenGL CMakeLists.txt
search_file SPIRV CMakeLists.txt
search_file OpenCL CMakeLists.txt
search_file HIP CMakeLists.txt
search_file ROCm CMakeLists.txt
search_file SYCL CMakeLists.txt
search_file TBB CMakeLists.txt
search_file OpenMP CMakeLists.txt
search_file MPI CMakeLists.txt
apt-get install -y libopenmpi-dev
python3 setup.py build
python3 -c "import numpy; print(numpy.__version__)"
cmake --version && ninja --version
search_file Vulkan CMakeLists.txt
search_file Metal CMakeLists.txt
search_file OpenGL CMakeLists.txt
search_file SPIRV CMakeLists.txt
search_file OpenCL CMakeLists.txt
search_file HIP CMakeLists.txt
search_file ROCm CMakeLists.txt
search_file SYCL CMakeLists.txt
search_file TBB CMakeLists.txt
search_file OpenMP CMakeLists.txt

