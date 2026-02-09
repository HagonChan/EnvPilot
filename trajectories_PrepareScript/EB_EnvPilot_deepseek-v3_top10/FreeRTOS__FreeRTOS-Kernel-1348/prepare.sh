ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
open ".github/workflows/unit-tests.yml"
sudo apt-get update && sudo apt-get install -y lcov cflow ruby doxygen build-essential unifdef
apt-get update && apt-get install -y lcov cflow ruby doxygen build-essential unifdef
ls -la FreeRTOS/Test/CMock
ls -la
open ".gitmodules"
ls -la FreeRTOS
git clone https://github.com/FreeRTOS/FreeRTOS-Kernel.git
ls -la FreeRTOS-Kernel/Test/CMock
ls -la FreeRTOS-Kernel
open ".github/workflows/unit-tests.yml"
git clone https://github.com/FreeRTOS/FreeRTOS.git
ls -la FreeRTOS/Test/CMock
open "FreeRTOS/.gitmodules"
cd FreeRTOS && git submodule update --init --recursive
ls -la FreeRTOS/Test/CMock
cd FreeRTOS/Test/CMock && make run_col_formatted lcovhtml
ls -la FreeRTOS/Test/CMock/build/coverage
ls -la FreeRTOS/Test/CMock/build
make run_col_formatted lcovhtml
ls -la build
open "FreeRTOS/Test/CMock/build/coverage/index.html"
