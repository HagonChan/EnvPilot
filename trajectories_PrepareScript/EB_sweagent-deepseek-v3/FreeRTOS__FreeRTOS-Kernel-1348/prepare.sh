ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yml"
sudo apt-get install lcov cflow ruby doxygen build-essential unifdef -y
apt-get install lcov cflow ruby doxygen build-essential unifdef -y
ls -la FreeRTOS/Test/CMock
git clone --recursive https://github.com/FreeRTOS/FreeRTOS.git
ls -la FreeRTOS/Test/CMock
cd FreeRTOS && git submodule update --init --recursive
ls -la Test/CMock
find . -type d -name "CMock"
cd FreeRTOS/Test/CMock
make clean
make
ls -la build/coverage
