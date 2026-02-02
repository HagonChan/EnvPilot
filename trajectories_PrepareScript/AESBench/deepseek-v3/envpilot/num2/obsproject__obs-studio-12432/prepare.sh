ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/build-project.yaml"
open ".github/workflows/push.yaml"
open "README.rst"
open "CMakeLists.txt"
apt-get update && apt-get install -y gcc make cmake libx11-dev libgl1-mesa-dev libpulse-dev libv4l-dev libudev-dev libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxcb-shm0-dev libxcb1-dev libx11-xcb-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev libcurl4-openssl-dev libgtk-3-dev libjansson-dev libspeexdsp-dev libluajit-5.1-dev python3-dev swig libmbedtls-dev libasound2-dev libavcodec-dev libavdevice-dev libavfilter-dev libavformat-dev libavutil-dev libswresample-dev libswscale-dev libfdk-aac-dev libopus-dev libvpx-dev libx264-dev libx265-dev
mkdir -p build && cd build
cmake ..
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz && tar -xzf cmake-3.28.0-linux-x86_64.tar.gz && export PATH=$PWD/cmake-3.28.0-linux-x86_64/bin:$PATH
apt-get install -y wget
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz && tar -xzf cmake-3.28.0-linux-x86_64.tar.gz && export PATH=$PWD/cmake-3.28.0-linux-x86_64/bin:$PATH
tar -xzf cmake-3.28.0-linux-x86_64.tar.gz && export PATH=$PWD/cmake-3.28.0-linux-x86_64/bin:$PATH
cmake --version
cmake ..
apt-get install -y g++
gcc --version && g++ --version
cmake ..
apt-get install -y extra-cmake-modules
cmake ..
add-apt-repository ppa:jonathonf/ffmpeg-6 -y && apt-get update && apt-get install -y ffmpeg
apt-get install -y software-properties-common
add-apt-repository ppa:jonathonf/ffmpeg-6 -y && apt-get update && apt-get install -y ffmpeg
add-apt-repository ppa:jonathonf/ffmpeg-4 -y && apt-get update && apt-get install -y ffmpeg
wget https://ffmpeg.org/releases/ffmpeg-6.1.tar.gz && tar -xzf ffmpeg-6.1.tar.gz && cd ffmpeg-6.1
./configure --prefix=/usr/local --enable-gpl --enable-nonfree --enable-libx264 --enable-libx265 --enable-libvpx --enable-libfdk-aac --enable-libopus --enable-libspeex --enable-libv4l2 --enable-libpulse --enable-libfreetype --enable-libfontconfig --enable-libxcb --enable-libxcb-shm --enable-libxcb-xfixes --enable-libxcb-composite --enable-libxkbcommon --enable-libxkbcommon-x11 --enable-libjansson --enable-libluajit --enable-libmbedtls --enable-libasound --enable-libavcodec --enable-libavdevice --enable-libavfilter --enable-libavformat --enable-libavutil --enable-libswresample --enable-libswscale
./configure --prefix=/usr/local --enable-gpl --enable-nonfree --enable-libx264 --enable-libx265 --enable-libvpx --enable-libfdk-aac --enable-libopus --enable-libspeex --enable-libv4l2 --enable-libpulse --enable-libfreetype --enable-libfontconfig --enable-libxcb --enable-libxcb-shm --enable-libxcb-xfixes --enable-libxkbcommon --enable-libxkbcommon-x11 --enable-libjansson --enable-libluajit --enable-libmbedtls --enable-libasound --enable-libavcodec --enable-libavdevice --enable-libavfilter --enable-libavformat --enable-libavutil --enable-libswresample --enable-libswscale
./configure --prefix=/usr/local --enable-gpl --enable-nonfree --enable-libx264 --enable-libx265 --enable-libvpx --enable-libfdk-aac --enable-libopus --enable-libspeex --enable-libv4l2 --enable-libpulse --enable-libfreetype --enable-libfontconfig --enable-libxcb --enable-libxcb-shm --enable-libxcb-xfixes --enable-libjansson --enable-libluajit --enable-libmbedtls --enable-libasound --enable-libavcodec --enable-libavdevice --enable-libavfilter --enable-libavformat --enable-libavutil --enable-libswresample --enable-libswscale
./configure --prefix=/usr/local --enable-gpl --enable-nonfree --enable-libx264 --enable-libx265 --enable-libvpx --enable-libfdk-aac --enable-libopus --enable-libspeex --enable-libv4l2 --enable-libpulse --enable-libfreetype --enable-libfontconfig --enable-libxcb --enable-libxcb-shm --enable-libxcb-xfixes --enable-libluajit --enable-libmbedtls --enable-libasound --enable-libavcodec --enable-libavdevice --enable-libavfilter --enable-libavformat --enable-libavutil --enable-libswresample --enable-libswscale
./configure --prefix=/usr/local --enable-gpl --enable-nonfree --enable-libx264 --enable-libx265 --enable-libvpx --enable-libfdk-aac --enable-libopus --enable-libspeex --enable-libv4l2 --enable-libpulse --enable-libfreetype --enable-libfontconfig --enable-libxcb --enable-libxcb-shm --enable-libxcb-xfixes --enable-libmbedtls --enable-libasound --enable-libavcodec --enable-libavdevice --enable-libavfilter --enable-libavformat --enable-libavutil --enable-libswresample --enable-libswscale
./configure --prefix=/usr/local --enable-gpl --enable-nonfree --enable-libx264 --enable-libx265 --enable-libvpx --enable-libfdk-aac --enable-libopus --enable-libspeex --enable-libv4l2 --enable-libpulse --enable-libfreetype --enable-libfontconfig --enable-libxcb --enable-libxcb-shm --enable-libxcb-xfixes --enable-libasound --enable-libavcodec --enable-libavdevice --enable-libavfilter --enable-libavformat --enable-libavutil --enable-libswresample --enable-libswscale
./configure --prefix=/usr/local --enable-gpl --enable-nonfree --enable-libx264 --enable-libx265 --enable-libvpx --enable-libfdk-aac --enable-libopus --enable-libspeex --enable-libv4l2 --enable-libpulse --enable-libfreetype --enable-libfontconfig --enable-libxcb --enable-libxcb-shm --enable-libxcb-xfixes --enable-libavcodec --enable-libavdevice --enable-libavfilter --enable-libavformat --enable-libavutil --enable-libswresample --enable-libswscale
./configure --prefix=/usr/local --enable-gpl --enable-nonfree --enable-libx264 --enable-libx265 --enable-libvpx --enable-libfdk-aac --enable-libopus --enable-libspeex --enable-libv4l2 --enable-libpulse --enable-libfreetype --enable-libfontconfig --enable-libxcb --enable-libxcb-shm --enable-libxcb-xfixes
apt-get install -y yasm
./configure --prefix=/usr/local --enable-gpl --enable-nonfree --enable-libx264 --enable-libx265 --enable-libvpx --enable-libfdk-aac --enable-libopus --enable-libspeex --enable-libv4l2 --enable-libpulse --enable-libfreetype --enable-libfontconfig --enable-libxcb --enable-libxcb-shm --enable-libxcb-xfixes
make -j$(nproc) && make install
cd .. && cmake ..
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH && cmake ..
cmake .. -DFFMPEG_LIBRARIES=/usr/local/lib -DFFMPEG_INCLUDE_DIRS=/usr/local/include
apt-get remove -y libavformat-dev libavutil-dev libswscale-dev libswresample-dev libavcodec-dev
cmake ..
apt-get install -y uthash-dev
cmake ..
apt-get install -y qt6-base-dev qt6-declarative-dev qt6-tools-dev
cmake ..
apt-get install -y libdrm-dev
cmake ..
cmake .. -DDISABLE_AJA=ON

