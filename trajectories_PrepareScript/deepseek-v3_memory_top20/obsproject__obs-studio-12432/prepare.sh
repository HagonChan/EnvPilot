ls -la
ls -la .github/workflows
open ".github/workflows/build-project.yaml"
open "README.rst"
find . -name "BUILD*" -o -name "INSTALL*" -o -name "README*" -o -name "*.md" | grep -i build
open "./build-aux/README.md"
find . -name "INSTALL*" -o -name "INSTALL*" | head -n 1
open "./INSTALL"
apt-get update
apt-get install -y gcc make cmake libx11-dev libgl1-mesa-dev libpulse-dev libv4l-dev libudev-dev libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxcb-shm0-dev libxcb1-dev libx11-xcb-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev libcurl4-openssl-dev libgtk-3-dev libjansson-dev libspeexdsp-dev libluajit-5.1-dev python3-dev swig libmbedtls-dev libasound2-dev libavcodec-dev libavdevice-dev libavfilter-dev libavformat-dev libavutil-dev libswresample-dev libswscale-dev libfdk-aac-dev libopus-dev libvpx-dev libx264-dev libx265-dev
mkdir -p build && cd build
cmake ..
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/kitware.list >/dev/null && sudo apt-get update
apt-get install -y gnupg
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/kitware.list >/dev/null && apt-get update
apt-get install -y lsb-release
rm /etc/apt/sources.list.d/kitware.list && apt-get update
apt-get install -y lsb-release
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/kitware.list >/dev/null && apt-get update
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && apt-key add /usr/share/keyrings/kitware-archive-keyring.gpg && apt-get update
cmake ..
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz
apt-get install -y wget
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz
tar -xzf cmake-3.28.0-linux-x86_64.tar.gz
mv cmake-3.28.0-linux-x86_64 /usr/local/cmake-3.28.0
ln -s /usr/local/cmake-3.28.0/bin/cmake /usr/local/bin/cmake
cmake --version
rm /usr/local/bin/cmake && ln -s /usr/local/cmake-3.28.0/bin/cmake /usr/local/bin/cmake
cmake --version
export PATH=/usr/local/cmake-3.28.0/bin:$PATH && cmake --version
cmake ..
apt-get install -y g++
cmake ..
apt-get install -y extra-cmake-modules
cmake ..
apt-get remove -y ffmpeg libavcodec-dev libavformat-dev libavutil-dev libswscale-dev libswresample-dev
add-apt-repository -y ppa:savoury1/ffmpeg4 && apt-get update
apt-get install -y software-properties-common
add-apt-repository -y ppa:savoury1/ffmpeg4 && apt-get update
wget https://ffmpeg.org/releases/ffmpeg-6.1.tar.gz
git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg
cd ffmpeg && ./configure
apt-get install -y nasm
./configure
make -j$(nproc) && make install
cd .. && cmake ..
wget https://raw.githubusercontent.com/troydhanson/uthash/master/src/uthash.h
mv uthash.h /usr/local/include/

