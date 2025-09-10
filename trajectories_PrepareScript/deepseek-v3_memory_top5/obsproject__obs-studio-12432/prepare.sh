ls -la
ls -la .github/workflows
open ".github/workflows/build-project.yaml"
open "README.rst"
open "INSTALL"
apt-get update && apt-get install -y gcc make cmake libx11-dev libgl1-mesa-dev libpulse-dev libv4l-dev libudev-dev libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxcb-shm0-dev libxcb1-dev libx11-xcb-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev libcurl4-openssl-dev libgtk-3-dev libjansson-dev libspeexdsp-dev libluajit-5.1-dev python3-dev swig libmbedtls-dev libasound2-dev libavcodec-dev libavdevice-dev libavfilter-dev libavformat-dev libavutil-dev libswresample-dev libswscale-dev libfdk-aac-dev libopus-dev libvpx-dev libx264-dev libx265-dev
mkdir -p build && cd build
cmake ..
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/kitware.list >/dev/null && sudo apt-get update && sudo apt-get install -y cmake
apt-get install -y gnupg
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/kitware.list >/dev/null && apt-get update && apt-get install -y cmake
apt-get install -y lsb-release
rm /etc/apt/sources.list.d/kitware.list && apt-get update && apt-get install -y lsb-release
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/kitware.list >/dev/null && apt-get update && apt-get install -y cmake
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && apt-key add /usr/share/keyrings/kitware-archive-keyring.gpg && apt-get update && apt-get install -y cmake
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.sh -O cmake-install.sh && chmod +x cmake-install.sh && ./cmake-install.sh --skip-license --prefix=/usr/local
apt-get install -y wget
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.sh -O cmake-install.sh && chmod +x cmake-install.sh && ./cmake-install.sh --skip-license --prefix=/usr/local
cmake --version
export PATH=/usr/local/bin:$PATH && cmake --version
cmake ..
apt-get install -y g++
cmake ..
apt-get install -y extra-cmake-modules
cmake ..
add-apt-repository ppa:jonathonf/ffmpeg-6 -y && apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:jonathonf/ffmpeg-6 -y && apt-get update
add-apt-repository ppa:savoury1/ffmpeg4 -y && apt-get update
apt-get install -y autoconf automake build-essential libtool pkg-config libx264-dev libx265-dev libvpx-dev libfdk-aac-dev libmp3lame-dev libopus-dev libspeex-dev libtheora-dev libvorbis-dev libwebp-dev libssl-dev libass-dev libfreetype6-dev libsdl2-dev libva-dev libvdpau-dev libxcb1-dev libxcb-shm0-dev libxcb-xfixes0-dev zlib1g-dev yasm nasm
wget https://ffmpeg.org/releases/ffmpeg-6.1.tar.gz && tar -xf ffmpeg-6.1.tar.gz && cd ffmpeg-6.1
./configure --enable-gpl --enable-libx264 --enable-libx265 --enable-libvpx --enable-libfdk-aac --enable-libmp3lame --enable-libopus --enable-libspeex --enable-libtheora --enable-libvorbis --enable-libwebp --enable-libass --enable-libfreetype --enable-libssl --enable-nonfree && make -j$(nproc)
./configure --enable-gpl --enable-libx264 --enable-libx265 --enable-libvpx --enable-libfdk-aac --enable-libmp3lame --enable-libopus --enable-libspeex --enable-libtheora --enable-libvorbis --enable-libwebp --enable-libass --enable-libfreetype --enable-nonfree && make -j$(nproc)
make install
ffmpeg -version
cd /testbed/build && cmake ..
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH && cmake ..
cmake .. -DFFMPEG_LIBRARIES=/usr/local/lib/libavformat.so;/usr/local/lib/libavutil.so;/usr/local/lib/libswscale.so;/usr/local/lib/libswresample.so;/usr/local/lib/libavcodec.so -DFFMPEG_INCLUDE_DIRS=/usr/local/include
find /usr -name "libavformat.so" -o -name "libavutil.so" -o -name "libswscale.so" -o -name "libswresample.so" -o -name "libavcodec.so"
cd /testbed/build/ffmpeg-6.1 && make install
ffmpeg -version
cd /testbed/build && cmake ..
cmake .. -DFFMPEG_LIBRARIES=/usr/local/lib/libavformat.so;/usr/local/lib/libavutil.so;/usr/local/lib/libswscale.so;/usr/local/lib/libswresample.so;/usr/local/lib/libavcodec.so -DFFMPEG_INCLUDE_DIRS=/usr/local/include
find /usr -name "libavformat.so" -o -name "libavutil.so" -o -name "libswscale.so" -o -name "libswresample.so" -o -name "libavcodec.so"
cd /testbed/build/ffmpeg-6.1 && make install
ffmpeg -version
cd /testbed/build && cmake ..
cmake .. -DFFMPEG_LIBRARIES=/usr/local/lib/libavformat.so;/usr/local/lib/libavutil.so;/usr/local/lib/libswscale.so;/usr/local/lib/libswresample.so;/usr/local/lib/libavcodec.so -DFFMPEG_INCLUDE_DIRS=/usr/local/include
find /usr -name "libavformat.so" -o -name "libavutil.so" -o -name "libswscale.so" -o -name "libswresample.so" -o -name "libavcodec.so"

