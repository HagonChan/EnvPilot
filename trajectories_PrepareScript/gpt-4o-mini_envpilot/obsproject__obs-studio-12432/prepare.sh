ls -la
open ".cirrus.yml"
apt-get update && apt-get install -y cmake ninja-build binutils curl ffmpeg libjansson-dev libpulse-dev libasound2-dev libavcodec-dev libavformat-dev libavutil-dev libfdk-aac-dev libdatachannel-dev
apt-cache search libdatachannel
apt-get install -y ninja-build binutils curl ffmpeg libjansson-dev libpulse-dev libasound2-dev libavcodec-dev libavformat-dev libavutil-dev libfdk-aac-dev
cmake -S . -B build -G Ninja -DOBS_CMAKE_VERSION=3.0 -DENABLE_JACK:BOOL=ON -DENABLE_SNDIO:BOOL=ON -DENABLE_LIBFDK:BOOL=ON
dpkg -l | grep cmake
apt-get install -y cmake
cmake -S . -B build -G Ninja -DOBS_CMAKE_VERSION=3.0 -DENABLE_JACK:BOOL=ON -DENABLE_SNDIO:BOOL=ON -DENABLE_LIBFDK:BOOL=ON
apt-get install -y software-properties-common && add-apt-repository ppa:kitware/ppa -y && apt-get update && apt-get install -y cmake
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.sh && chmod +x cmake-3.28.0-linux-x86_64.sh && ./cmake-3.28.0-linux-x86_64.sh --skip-license --prefix=/usr/local
curl -LO https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.sh && chmod +x cmake-3.28.0-linux-x86_64.sh && ./cmake-3.28.0-linux-x86_64.sh --skip-license --prefix=/usr/local
cmake -S . -B build -G Ninja -DOBS_CMAKE_VERSION=3.0 -DENABLE_JACK:BOOL=ON -DENABLE_SNDIO:BOOL=ON -DENABLE_LIBFDK:BOOL=ON
cmake --version

which cmake
apt-get remove --purge cmake
rm -rf /usr/share/cmake-3.22 /usr/local/bin/cmake /usr/local/share/cmake-3.22
cmake --version
env | grep CMAKE
rm -rf /usr/local/share/cmake-* /usr/local/bin/cmake /usr/share/cmake-*
curl -LO https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.sh && chmod +x cmake-3.28.0-linux-x86_64.sh && ./cmake-3.28.0-linux-x86_64.sh --skip-license --prefix=/usr/local
cmake --version
ls -la /usr/local/bin | grep cmake
rm -f /usr/local/bin/cmake /usr/local/bin/ccmake /usr/local/bin/cmake-gui
curl -LO https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.sh && chmod +x cmake-3.28.0-linux-x86_64.sh && ./cmake-3.28.0-linux-x86_64.sh --skip-license --prefix=/usr/local
cmake --version
ls -la /usr/local/share | grep cmake
ln -s /usr/local/bin/cmake /usr/bin/cmake

rm -f /usr/bin/cmake
ln -s /usr/local/bin/cmake /usr/bin/cmake
cmake --version
cmake -S . -B build -G Ninja -DOBS_CMAKE_VERSION=3.0 -DENABLE_JACK:BOOL=ON -DENABLE_SNDIO:BOOL=ON -DENABLE_LIBFDK:BOOL=ON
apt-get install -y g++
cmake -S . -B build -G Ninja -DOBS_CMAKE_VERSION=3.0 -DENABLE_JACK:BOOL=ON -DENABLE_SNDIO:BOOL=ON -DENABLE_LIBFDK:BOOL=ON
apt-get install -y extra-cmake-modules
cmake -S . -B build -G Ninja -DOBS_CMAKE_VERSION=3.0 -DENABLE_JACK:BOOL=ON -DENABLE_SNDIO:BOOL=ON -DENABLE_LIBFDK:BOOL=ON
add-apt-repository ppa:jonathonf/ffmpeg-4 -y && apt-get update && apt-get install -y ffmpeg
apt-get install -y ffmpeg
git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg-source && cd ffmpeg-source && ./configure --enable-shared && make && make install
apt-get install -y nasm
cd ffmpeg-source && ./configure --enable-shared && make && make install
./configure --enable-shared && make && make install
make
make install
cmake -S . -B build -G Ninja -DOBS_CMAKE_VERSION=3.0 -DENABLE_JACK:BOOL=ON -DENABLE_SNDIO:BOOL=ON -DENABLE_LIBFDK:BOOL=ON
cd .. && cmake -S . -B build -G Ninja -DOBS_CMAKE_VERSION=3.0 -DENABLE_JACK:BOOL=ON -DENABLE_SNDIO:BOOL=ON -DENABLE_LIBFDK:BOOL=ON
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH && cmake -S . -B build -G Ninja -DOBS_CMAKE_VERSION=3.0 -DENABLE_JACK:BOOL=ON -DENABLE_SNDIO:BOOL=ON -DENABLE_LIBFDK:BOOL=ON

