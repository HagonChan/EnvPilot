ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
sudo apt-get update && sudo apt-get install --no-install-recommends -y ccache g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine32 wine64
apt-get update && apt-get install --no-install-recommends -y ccache g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine32 wine64
python3 -m pip install meson
apt-get install -y python3 python3-pip
python3 -m pip install meson
ls -la meson.build
mkdir build && cd build && meson ..
apt-get install -y pkg-config cmake
meson setup ..
apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libavfilter-dev libswresample-dev libavresample-dev
apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libavfilter-dev libswresample-dev
meson setup ..
apt-cache policy libavcodec-dev
wget https://ffmpeg.org/releases/ffmpeg-6.0.tar.xz
apt-get install -y wget
wget https://ffmpeg.org/releases/ffmpeg-6.0.tar.xz
tar -xf ffmpeg-6.0.tar.xz
cd ffmpeg-6.0 && ./configure --prefix=/usr/local
apt-get install -y nasm
./configure --prefix=/usr/local
make -j$(nproc) && make install
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH
cd /testbed/build && meson setup ..
pkg-config --modversion libavcodec
wget https://ffmpeg.org/releases/ffmpeg-7.0.tar.xz
tar -xf ffmpeg-7.0.tar.xz
cd ffmpeg-7.0 && ./configure --prefix=/usr/local
make -j$(nproc) && make install
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH
cd /testbed/build && meson setup ..
apt-get install -y libplacebo-dev
apt-get clean
apt-get install -y libplacebo-dev
rm -rf /var/cache/apt/archives/*
apt-get install -y libplacebo-dev
meson setup ..
wget https://github.com/haasn/libplacebo/archive/refs/tags/v4.208.0.tar.gz
tar -xf v4.208.0.tar.gz
cd libplacebo-4.208.0 && meson setup build
apt-get install -y ninja-build
cd /testbed/build && meson setup ..
open "meson.build"
cd /testbed && ls -la
open "meson.build"
edit 'libplacebo = dependency('"'"'libplacebo'"'"', version: '"'"'>=6.338.2'"'"',
                default_options: ['"'"'default_library=static'"'"', '"'"'demos=false'"'"'])' '# libplacebo = dependency('"'"'libplacebo'"'"', version: '"'"'>=6.338.2'"'"',
#                 default_options: ['"'"'default_library=static'"'"', '"'"'demos=false'"'"'])'
edit 'dependencies = [libass,
                libavcodec,
                libavfilter,
                libavformat,
                libavutil,
                libplacebo,
                libswresample,
                libswscale]' 'dependencies = [libass,
                libavcodec,
                libavfilter,
                libavformat,
                libavutil,
                libswresample,
                libswscale]'

