ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "README.md"
open "meson.build"
sudo apt-get update && sudo apt-get install --no-install-recommends -y ccache g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine64
apt-get update && apt-get install --no-install-recommends -y ccache g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine64
python3 -m pip install meson
meson setup build
apt-get install -y libavcodec-dev libavfilter-dev libavformat-dev libavutil-dev libswresample-dev libswscale-dev
meson setup build
wget https://ffmpeg.org/releases/ffmpeg-6.0.tar.xz
apt-get install -y wget
wget https://ffmpeg.org/releases/ffmpeg-6.0.tar.xz
tar -xf ffmpeg-6.0.tar.xz
cd ffmpeg-6.0 && ./configure --prefix=/usr/local
make -j$(nproc) && make install
cd .. && meson setup build
ffmpeg -version
cd ffmpeg-6.0 && make distclean && ./configure --prefix=/usr/local --enable-version3 && make -j$(nproc) && make install
ffmpeg -version
wget https://ffmpeg.org/releases/ffmpeg-6.1.tar.xz
tar -xf ffmpeg-6.1.tar.xz
cd ffmpeg-6.1 && ./configure --prefix=/usr/local --enable-version3
make -j$(nproc) && make install
ffmpeg -version
cd ../..
meson setup build
apt-get install -y libplacebo-dev
meson setup build
wget https://github.com/haasn/libplacebo/archive/refs/tags/v6.338.2.tar.gz
tar -xf v6.338.2.tar.gz
cd libplacebo-6.338.2 && meson setup build
apt-get install -y g++
meson setup build
git submodule update --init
meson setup build
ls -la 3rdparty
meson --wipe build
python3 -m pip install glad

