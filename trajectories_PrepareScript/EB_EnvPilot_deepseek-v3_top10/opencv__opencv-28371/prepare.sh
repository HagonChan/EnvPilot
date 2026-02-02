ls -la
ls -la .github/workflows
open ".github/workflows/arm64-build-checks.yml"
open "README.md"
open "CMakeLists.txt"
sudo apt-get update && sudo apt-get install -y crossbuild-essential-arm64 git cmake libpython-dev:arm64 libpython3-dev:arm64 python-numpy python3-numpy
apt-get update && apt-get install -y crossbuild-essential-arm64 git cmake libpython-dev:arm64 libpython3-dev:arm64 python-numpy python3-numpy
apt-get install -y crossbuild-essential-arm64 git cmake python3-numpy
apt-get install -y gcc g++ build-essential pkg-config libgtk2.0-dev libavcodec-dev libavformat-dev libswscale-dev libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev libv4l-dev libatlas-base-dev gfortran
apt-get install -y gcc g++ build-essential pkg-config libgtk2.0-dev libavcodec-dev libavformat-dev libswscale-dev libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libv4l-dev libatlas-base-dev gfortran
apt-cache search libdc1394
apt-get install -y libdc1394-dev
mkdir -p build && cd build && cmake ..
make -j$(nproc)

