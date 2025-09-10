ls -la
ls -la .github/workflows
open ".github/workflows/build-project.yaml"
open "README.rst"
open "INSTALL"
apt-get update && apt-get install -y gcc make cmake libx11-dev libgl1-mesa-dev libpulse-dev libv4l-dev libudev-dev libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxcb-shm0-dev libxcb1-dev libx11-xcb-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev libcurl4-openssl-dev libgtk-3-dev libjansson-dev libspeexdsp-dev libluajit-5.1-dev python3-dev swig libmbedtls-dev libasound2-dev libavcodec-dev libavdevice-dev libavfilter-dev libavformat-dev libavutil-dev libswresample-dev libswscale-dev libfdk-aac-dev libopus-dev libvpx-dev libx264-dev libx265-dev
apt-get install -y --fix-missing gcc make cmake libx11-dev libgl1-mesa-dev libpulse-dev libv4l-dev libudev-dev libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxcb-shm0-dev libxcb1-dev libx11-xcb-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev libcurl4-openssl-dev libgtk-3-dev libjansson-dev libspeexdsp-dev libluajit-5.1-dev python3-dev swig libmbedtls-dev libasound2-dev libavcodec-dev libavdevice-dev libavfilter-dev libavformat-dev libavutil-dev libswresample-dev libswscale-dev libfdk-aac-dev libopus-dev libvpx-dev libx264-dev libx265-dev
mkdir -p build && cd build && cmake .. && make
apt-get remove -y cmake && wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/kitware.list >/dev/null && apt-get update && apt-get install -y cmake
apt-get install -y gnupg lsb-release
rm -f /etc/apt/sources.list.d/kitware.list && apt-get install -y gnupg lsb-release
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/kitware.list >/dev/null && apt-get update && apt-get install -y cmake
gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 16FAAD7AF99A65E2 && gpg --export --armor 16FAAD7AF99A65E2 | apt-key add - && apt-get update && apt-get install -y cmake
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.sh && chmod +x cmake-3.28.0-linux-x86_64.sh && ./cmake-3.28.0-linux-x86_64.sh --skip-license --prefix=/usr/local
apt-get install -y wget
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.sh && chmod +x cmake-3.28.0-linux-x86_64.sh && ./cmake-3.28.0-linux-x86_64.sh --skip-license --prefix=/usr/local
wget --no-check-certificate https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.sh && chmod +x cmake-3.28.0-linux-x86_64.sh && ./cmake-3.28.0-linux-x86_64.sh --skip-license --prefix=/usr/local
rm -f cmake-3.28.0-linux-x86_64.sh* && wget --no-check-certificate https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.sh && chmod +x cmake-3.28.0-linux-x86_64.sh && ./cmake-3.28.0-linux-x86_64.sh --skip-license --prefix=/usr/local
cmake --version
/usr/local/bin/cmake --version
rm -rf build && mkdir -p build && cd build && /usr/local/bin/cmake .. && make
apt-get install -y g++
rm -rf build && mkdir -p build && cd build && /usr/local/bin/cmake .. && make
cd .. && rm -rf build && mkdir -p build && cd build && /usr/local/bin/cmake .. && make
ls -la CMakeLists.txt
ls -la
cd /testbed && ls -la
rm -rf build && mkdir -p build && cd build && /usr/local/bin/cmake .. && make
apt-get install -y extra-cmake-modules
cd /testbed && rm -rf build && mkdir -p build && cd build && /usr/local/bin/cmake .. && make
apt-get remove -y ffmpeg libavcodec-dev libavformat-dev libavutil-dev libswscale-dev libswresample-dev && add-apt-repository -y ppa:jonathonf/ffmpeg-6 && apt-get update && apt-get install -y ffmpeg libavcodec-dev libavformat-dev libavutil-dev libswscale-dev libswresample-dev
apt-get install -y software-properties-common
add-apt-repository -y ppa:jonathonf/ffmpeg-6 && apt-get update && apt-get install -y ffmpeg libavcodec-dev libavformat-dev libavutil-dev libswscale-dev libswresample-dev
wget https://ffmpeg.org/releases/ffmpeg-6.1.tar.gz && tar -xf ffmpeg-6.1.tar.gz && cd ffmpeg-6.1 && ./configure --prefix=/usr/local --enable-shared --disable-static && make -j$(nproc) && make install
wget --no-check-certificate https://ffmpeg.org/releases/ffmpeg-6.1.tar.gz && tar -xf ffmpeg-6.1.tar.gz && cd ffmpeg-6.1 && ./configure --prefix=/usr/local --enable-shared --disable-static && make -j$(nproc) && make install
apt-get install -y nasm
./configure --prefix=/usr/local --enable-shared --disable-static && make -j$(nproc) && make install
ffmpeg -version
ldconfig
ffmpeg -version
cd /testbed && rm -rf build && mkdir -p build && cd build && /usr/local/bin/cmake .. && make
wget --no-check-certificate https://github.com/troydhanson/uthash/archive/refs/tags/v2.3.0.tar.gz && tar -xf v2.3.0.tar.gz && cp -r uthash-2.3.0/src /usr/local/include/uthash
cd /testbed && rm -rf build && mkdir -p build && cd build && /usr/local/bin/cmake .. && make
cd /testbed && rm -rf build && mkdir -p build && cd build && /usr/local/bin/cmake -DUthash_INCLUDE_DIR=/usr/local/include/uthash .. && make
apt-get install -y qt6-base-dev qt6-declarative-dev qt6-tools-dev
cd /testbed && rm -rf build && mkdir -p build && cd build && /usr/local/bin/cmake -DUthash_INCLUDE_DIR=/usr/local/include/uthash .. && make
apt-get install -y libdrm-dev
cd /testbed && rm -rf build && mkdir -p build && cd build && /usr/local/bin/cmake -DUthash_INCLUDE_DIR=/usr/local/include/uthash .. && make
cd /testbed && rm -rf build && mkdir -p build && cd build && /usr/local/bin/cmake -DUthash_INCLUDE_DIR=/usr/local/include/uthash -DDISABLE_AJA=ON .. && make

