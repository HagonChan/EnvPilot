ls -la
ls -la .github/workflows
open ".github/workflows/arm64-build-checks.yml"
open "README.md"
sudo apt-get update && sudo apt-get install -y --no-install-recommends crossbuild-essential-arm64 git cmake libpython-dev:arm64 libpython3-dev:arm64 python-numpy python3-numpy
apt-get update && apt-get install -y --no-install-recommends crossbuild-essential-arm64 git cmake libpython-dev:arm64 libpython3-dev:arm64 python-numpy python3-numpy
apt-cache search libpython | grep dev
apt-get install -y --no-install-recommends crossbuild-essential-arm64 git cmake libpython2-dev libpython3-dev python3-numpy
git clone https://github.com/opencv/opencv_contrib.git
mkdir build && cd build && cmake -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib/modules ..
apt-get install -y gcc g++
cmake -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib/modules ..
make -j$(nproc)
make test
cat Testing/Temporary/LastTest.log
apt-get install -y ocl-icd-opencl-dev
make test
cd bin && ./opencv_test_core
./opencv_test_imgproc
./opencv_test_highgui
apt-get install -y libgtk2.0-dev pkg-config
cd .. && rm -rf * && cmake -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib/modules -DWITH_GTK=ON ..
make -j$(nproc)
cd bin && ./opencv_test_highgui
ldconfig -p | grep gtk
cd .. && rm -rf * && cmake -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib/modules -DWITH_GTK=ON -DWITH_GTK_2_X=ON -DCMAKE_BUILD_TYPE=Debug ..
make VERBOSE=1 -j$(nproc)
cd bin && ./opencv_test_highgui
echo $LD_LIBRARY_PATH

