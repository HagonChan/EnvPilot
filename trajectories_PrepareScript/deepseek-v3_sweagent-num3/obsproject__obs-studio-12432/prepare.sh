ls -la
ls -la .github/workflows
open ".github/workflows/build-project.yaml"
open ".github/workflows/push.yaml"
open "CMakeLists.txt"
open "README.rst"
sudo apt-get update
apt-get update
apt-get install -y cmake git build-essential libx11-dev libgl1-mesa-dev libpulse-dev libxcomposite-dev libxinerama-dev libv4l-dev libudev-dev libfreetype6-dev libfontconfig-dev qtbase5-dev libqt5svg5-dev libcurl4-openssl-dev libavcodec-dev libavdevice-dev libavfilter-dev libavformat-dev libavutil-dev libswresample-dev libswscale-dev
mkdir -p build && cd build
cmake ..
apt-cache policy cmake
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null
cd ..
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz
curl -LO https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz
apt-get install -y curl
curl -LO https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz
open "CMakeLists.txt"
edit 'cmake_minimum_required(VERSION 3.28...3.30)' 'cmake_minimum_required(VERSION 3.22.1)'
cd build && cmake ..
apt-get install -y extra-cmake-modules
cmake ..
open "libobs/CMakeLists.txt"
cd ../libobs && ls
open "libobs/CMakeLists.txt"
open "/testbed/libobs/CMakeLists.txt"
edit 'cmake_minimum_required(VERSION 3.28...3.30)' 'cmake_minimum_required(VERSION 3.22.1)'
cd ../build && cmake ..
apt-cache policy ffmpeg
edit 'find_package(FFmpeg 6.1 REQUIRED avformat avutil swscale swresample OPTIONAL_COMPONENTS avcodec)' 'find_package(FFmpeg 4.4 REQUIRED avformat avutil swscale swresample OPTIONAL_COMPONENTS avcodec)'
cmake ..
apt-get install -y uthash-dev
cmake ..
apt-get install -y qt6-base-dev
cmake ..
apt-get install -y libjansson-dev
cmake ..
open "deps/libcaption/CMakeLists.txt"
cd ../deps/libcaption && ls
open "deps/libcaption/CMakeLists.txt"
open "/testbed/deps/libcaption/CMakeLists.txt"
edit 'cmake_minimum_required(VERSION 3.28...3.30)' 'cmake_minimum_required(VERSION 3.22.1)'
cd ../../build && cmake ..
apt-get install -y libx11-xcb-dev
cmake ..
apt-get install -y libwayland-dev
cmake ..

