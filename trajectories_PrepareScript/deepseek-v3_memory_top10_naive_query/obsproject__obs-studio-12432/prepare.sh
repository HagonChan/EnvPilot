ls -la
ls -la .github/workflows
open ".github/workflows/build-project.yaml"
open "README.rst"
open "INSTALL"
open "CMakeLists.txt"
apt-get update && apt-get install -y gcc make cmake libx11-dev libgl1-mesa-dev libpulse-dev libv4l-dev libudev-dev libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxcb-shm0-dev libxcb1-dev libx11-xcb-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev libcurl4-openssl-dev libgtk-3-dev libjansson-dev libspeexdsp-dev libluajit-5.1-dev python3-dev swig libmbedtls-dev libasound2-dev libavcodec-dev libavdevice-dev libavfilter-dev libavformat-dev libavutil-dev libswresample-dev libswscale-dev libfdk-aac-dev libopus-dev libvpx-dev libx264-dev libx265-dev
mkdir -p build && cd build
cmake ..
apt-get remove -y cmake && wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/kitware.list >/dev/null && apt-get update && apt-get install -y cmake
apt-get install -y gnupg lsb-release
rm /etc/apt/sources.list.d/kitware.list && apt-get install -y gnupg lsb-release
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/kitware.list >/dev/null && apt-get update && apt-get install -y cmake
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && sudo apt-get update && sudo apt-get install -y cmake
wget -O kitware.key https://apt.kitware.com/keys/kitware-archive-latest.asc && gpg --dearmor < kitware.key > /usr/share/keyrings/kitware-archive-keyring.gpg && apt-get update && apt-get install -y cmake
curl -fsSL https://apt.kitware.com/keys/kitware-archive-latest.asc | gpg --dearmor -o /usr/share/keyrings/kitware-archive-keyring.gpg && apt-get update && apt-get install -y cmake
cmake ..
apt-get install -y cmake
cmake ..
edit 'cmake_minimum_required(VERSION 3.28)' '# cmake_minimum_required(VERSION 3.28)'
open "CMakeLists.txt"
cd ..
open "CMakeLists.txt"
edit 'cmake_minimum_required(VERSION 3.28...3.30)' 'cmake_minimum_required(VERSION 3.22.1)'
cd build && cmake ..
apt-get install -y g++
cmake ..
apt-get install -y extra-cmake-modules
cmake ..
open "libobs/CMakeLists.txt"
cd .. && ls -la
open "libobs/CMakeLists.txt"
edit 'cmake_minimum_required(VERSION 3.28...3.30)' 'cmake_minimum_required(VERSION 3.22.1)'
cd build && cmake ..
apt-cache policy ffmpeg
add-apt-repository -y ppa:jonathonf/ffmpeg-6 && apt-get update && apt-get install -y ffmpeg
apt-get install -y software-properties-common
add-apt-repository -y ppa:jonathonf/ffmpeg-6 && apt-get update && apt-get install -y ffmpeg
add-apt-repository -y ppa:savoury1/ffmpeg4 && apt-get update && apt-get install -y ffmpeg
wget https://ffmpeg.org/releases/ffmpeg-6.1.tar.gz && tar -xf ffmpeg-6.1.tar.gz && cd ffmpeg-6.1
apt-get install -y wget
wget https://ffmpeg.org/releases/ffmpeg-6.1.tar.gz && tar -xf ffmpeg-6.1.tar.gz && cd ffmpeg-6.1
./configure --prefix=/usr/local
apt-get install -y yasm
./configure --prefix=/usr/local
make -j$(nproc) && make install
cd /testbed/build && cmake ..
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH && cmake ..
apt-get remove -y ffmpeg libavformat-dev libavutil-dev libswscale-dev libswresample-dev libavcodec-dev && cmake ..

