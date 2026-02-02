ls -la
ls -la .github/workflows
open ".github/workflows/4.x.yml"
open ".github/workflows/PR-4.x.yaml"
open "README.md"
open "CMakeLists.txt"
search_file test CMakeLists.txt
mkdir -p build && cd build && cmake -DBUILD_TESTS=ON ..
sudo apt-get update && sudo apt-get install -y cmake
apt-get update && apt-get install -y cmake
cmake -DBUILD_TESTS=ON ..
apt-get install -y g++
cmake -DBUILD_TESTS=ON ..
make -j$(nproc)
make test
open "/testbed/build/Testing/Temporary/LastTest.log"
apt-get install -y ocl-icd-opencl-dev libopencv-dev
make -j$(nproc)
make test
ctest --rerun-failed --output-on-failure
apt-get install -y ocl-icd-opencl-dev clinfo
clinfo
apt-get install -y intel-opencl-icd
clinfo
cmake -DBUILD_TESTS=ON -DWITH_OPENCL=OFF ..
make -j$(nproc)
make test
ctest --rerun-failed --output-on-failure
apt-get install -y libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev
apt-get install -y libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev
cmake -DBUILD_TESTS=ON -DWITH_OPENCL=OFF ..
make -j$(nproc)
make test
ctest --rerun-failed --output-on-failure
cmake -DBUILD_TESTS=ON -DWITH_OPENCL=OFF -DWITH_GSTREAMER=OFF ..
make -j$(nproc)
make test
ctest --rerun-failed --output-on-failure
cmake -DBUILD_TESTS=ON -DWITH_OPENCL=OFF -DWITH_GSTREAMER=OFF ..
make -j$(nproc)
make test
ctest --rerun-failed --output-on-failure
cmake -DBUILD_TESTS=ON -DWITH_OPENCL=OFF -DWITH_GSTREAMER=OFF ..
make -j$(nproc)
make test
ctest --rerun-failed --output-on-failure
cmake -DBUILD_TESTS=ON -DWITH_OPENCL=OFF -DWITH_GSTREAMER=OFF ..
make -j$(nproc)
make test

