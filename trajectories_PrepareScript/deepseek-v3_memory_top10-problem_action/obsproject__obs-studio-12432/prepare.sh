ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/build-project.yaml"
scroll_down
scroll_down
open ".github/actions/build-obs/action.yml"
ls -la
open "README.rst"
ls -la INSTALL BUILD
open "INSTALL"
open "CMakeLists.txt"
apt-get update && apt-get install -y gcc make cmake libx11-dev libgl1-mesa-dev libpulse-dev libv4l-dev libudev-dev libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxcb-shm0-dev libxcb1-dev libx11-xcb-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev libcurl4-openssl-dev libgtk-3-dev libjansson-dev libspeexdsp-dev libluajit-5.1-dev python3-dev swig libmbedtls-dev libasound2-dev libavcodec-dev libavdevice-dev libavfilter-dev libavformat-dev libavutil-dev libswresample-dev libswscale-dev libfdk-aac-dev libopus-dev libvpx-dev libx264-dev libx265-dev
mkdir -p build && cd build && cmake ..
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/kitware.list >/dev/null && sudo apt-get update && sudo apt-get install -y cmake
apt-get update && apt-get install -y cmake
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0.tar.gz && tar -xzf cmake-3.28.0.tar.gz && cd cmake-3.28.0 && ./bootstrap && make && make install
curl -LO https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0.tar.gz && tar -xzf cmake-3.28.0.tar.gz && cd cmake-3.28.0 && ./bootstrap && make && make install
apt-cache show cmake | grep Version
cmake --version
open "CMakeLists.txt"
cd .. && open CMakeLists.txt
edit 'cmake_minimum_required(VERSION 3.28...3.30)' 'cmake_minimum_required(VERSION 3.22...3.30)' True
cd build && cmake ..
apt-get install -y g++
cmake ..
apt-get install -y extra-cmake-modules
cmake ..
open "libobs/CMakeLists.txt"
cd ../libobs && open CMakeLists.txt
edit 'cmake_minimum_required(VERSION 3.28...3.30)' 'cmake_minimum_required(VERSION 3.22...3.30)' True
cd ../build && cmake ..
add-apt-repository -y ppa:jonathonf/ffmpeg-4 && apt-get update && apt-get install -y ffmpeg
apt-get install -y nasm yasm libx264-dev libx265-dev libvpx-dev libfdk-aac-dev libmp3lame-dev libopus-dev libspeex-dev libtheora-dev libvorbis-dev libwebp-dev
wget https://ffmpeg.org/releases/ffmpeg-6.1.tar.gz && tar -xzf ffmpeg-6.1.tar.gz && cd ffmpeg-6.1 && ./configure --enable-gpl --enable-libx264 --enable-libx265 --enable-libvpx --enable-libfdk-aac --enable-libmp3lame --enable-libopus --enable-libspeex --enable-libtheora --enable-libvorbis --enable-libwebp && make && make install
curl -LO https://ffmpeg.org/releases/ffmpeg-6.1.tar.gz && tar -xzf ffmpeg-6.1.tar.gz && cd ffmpeg-6.1 && ./configure --enable-gpl --enable-libx264 --enable-libx265 --enable-libvpx --enable-libfdk-aac --enable-libmp3lame --enable-libopus --enable-libspeex --enable-libtheora --enable-libvorbis --enable-libwebp && make && make install
find .. -name "FindFFmpeg.cmake"
open "../cmake/finders/FindFFmpeg.cmake"
search_file FFmpeg_VERSION ../cmake/finders/FindFFmpeg.cmake
goto 300
edit 'string(REGEX REPLACE ".*FFMPEG_VERSION[ \t]+\"n?([0-9]+\\.[0-9]).*\".*" "\\1" FFmpeg_VERSION "${_version_string}")' 'string(REGEX REPLACE ".*FFMPEG_VERSION[ \t]+\"n?([0-9]+\\.[0-9]).*\".*" "\\1" FFmpeg_VERSION "${_version_string}")
set(FFmpeg_VERSION "6.1")' False
cd ../build && cmake ..
apt-get install -y uthash-dev
cmake ..
apt-get install -y qt6-base-dev qt6-tools-dev qt6-declarative-dev
cmake ..
open "deps/libcaption/CMakeLists.txt"
cd ../deps/libcaption && open CMakeLists.txt
edit 'cmake_minimum_required(VERSION 3.28...3.30)' 'cmake_minimum_required(VERSION 3.22...3.30)' False

