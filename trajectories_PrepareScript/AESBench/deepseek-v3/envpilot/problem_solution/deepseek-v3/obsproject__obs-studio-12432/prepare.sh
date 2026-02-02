ls -a
open "README.rst"
open "INSTALL"
open "CMakeLists.txt"
ls -a .github/workflows
open ".github/workflows/push.yaml"
open ".github/workflows/build-project.yaml"
open ".github/workflows/pr-pull.yaml"
open ".github/workflows/scheduled.yaml"
sudo apt-get update && sudo apt-get install -y gcc make cmake libx11-dev libgl1-mesa-dev libpulse-dev libv4l-dev libudev-dev libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxcb-shm0-dev libxcb1-dev libx11-xcb-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev libcurl4-openssl-dev libgtk-3-dev libjansson-dev libspeexdsp-dev libluajit-5.1-dev python3-dev swig libmbedtls-dev libasound2-dev libavcodec-dev libavdevice-dev libavfilter-dev libavformat-dev libavutil-dev libswresample-dev libswscale-dev libfdk-aac-dev libopus-dev libvpx-dev libx264-dev libx265-dev
apt-get update && apt-get install -y gcc make cmake libx11-dev libgl1-mesa-dev libpulse-dev libv4l-dev libudev-dev libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxcb-shm0-dev libxcb1-dev libx11-xcb-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev libcurl4-openssl-dev libgtk-3-dev libjansson-dev libspeexdsp-dev libluajit-5.1-dev python3-dev swig libmbedtls-dev libasound2-dev libavcodec-dev libavdevice-dev libavfilter-dev libavformat-dev libavutil-dev libswresample-dev libswscale-dev libfdk-aac-dev libopus-dev libvpx-dev libx264-dev libx265-dev
mkdir -p build && cd build
cmake ..
apt-get install -y cmake
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/kitware.list >/dev/null && apt-get update && apt-get install -y cmake
apt-get install -y gnupg lsb-release
rm /etc/apt/sources.list.d/kitware.list && apt-get update && apt-get install -y gnupg lsb-release
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/kitware.list >/dev/null && apt-get update && apt-get install -y cmake
gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-key 65ADECD7A7039392 && gpg --export --armor 65ADECD7A7039392 | sudo tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && apt-get update && apt-get install -y cmake
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && apt-get update && apt-get install -y cmake
cmake ..
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz && tar -xzf cmake-3.28.0-linux-x86_64.tar.gz --strip-components=1 -C /usr/local
apt-get install -y wget
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz && tar -xzf cmake-3.28.0-linux-x86_64.tar.gz --strip-components=1 -C /usr/local
tar -xzf cmake-3.28.0-linux-x86_64.tar.gz --strip-components=1 -C /usr/local
cmake --version
export PATH=/usr/local/bin:$PATH && cmake --version
cmake ..
apt-get install -y g++
cmake ..
apt-get install -y extra-cmake-modules
cmake ..
add-apt-repository ppa:jonathonf/ffmpeg-6 -y && apt-get update && apt-get install -y ffmpeg
apt-get install -y software-properties-common
add-apt-repository ppa:jonathonf/ffmpeg-6 -y && apt-get update && apt-get install -y ffmpeg
add-apt-repository ppa:savoury1/ffmpeg6 -y && apt-get update && apt-get install -y ffmpeg
wget https://ffmpeg.org/releases/ffmpeg-6.1.tar.gz && tar -xzf ffmpeg-6.1.tar.gz && cd ffmpeg-6.1 && ./configure --prefix=/usr/local --enable-shared && make -j$(nproc) && make install
apt-get install -y nasm
./configure --prefix=/usr/local --enable-shared && make -j$(nproc) && make install
cd .. && cmake ..
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH && cmake ..
apt-get remove -y ffmpeg libavformat-dev libavutil-dev libswscale-dev libswresample-dev libavcodec-dev
cmake ..
apt-get install -y uthash-dev
cmake ..
apt-get install -y qt6-base-dev
cmake ..
apt-get install -y libdrm-dev
cmake ..

