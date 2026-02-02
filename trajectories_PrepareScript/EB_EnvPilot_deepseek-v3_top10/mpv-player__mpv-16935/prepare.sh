ls -la
open ".github/workflows"
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y build-essential cmake ninja-build pkgconf python3-pip nasm g++-mingw-w64 gcc-multilib wine wine32 wine64
apt-get install -y build-essential cmake ninja-build pkgconf python3-pip nasm g++-mingw-w64 gcc-multilib wine && python3 -m pip install meson
ls -la meson.build
meson setup builddir
apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libavfilter-dev libswresample-dev libavutil-dev
meson setup builddir
apt-cache policy libavcodec-dev
open "meson.build"
open ".github/workflows/build.yml"
git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg
git clone --depth 1 https://git.ffmpeg.org/ffmpeg.git ffmpeg
wget https://ffmpeg.org/releases/ffmpeg-6.0.tar.xz
apt-get install -y wget && wget https://ffmpeg.org/releases/ffmpeg-6.0.tar.xz
edit 'dependency('"'"'libavcodec'"'"', version: '"'"'>= 60.31.102'"'"')' 'dependency('"'"'libavcodec'"'"', version: '"'"'>= 4.4.2'"'"')'
open "meson.build"
open ".github/workflows/build.yml"
git clone --depth 1 https://git.ffmpeg.org/ffmpeg.git ffmpeg
wget https://ffmpeg.org/releases/ffmpeg-6.0.tar.xz
tar -xf ffmpeg-6.0.tar.xz && cd ffmpeg-6.0 && ./configure --prefix=/usr/local --enable-shared && make -j$(nproc) && make install
cd .. && meson setup builddir
open "meson.build"
open ".github/workflows/build.yml"
git clone --depth 1 https://git.ffmpeg.org/ffmpeg.git ffmpeg
cd ffmpeg && ./configure --prefix=/usr/local --enable-shared && make -j$(nproc) && make install
cd .. && meson setup builddir
git clone --depth 1 https://code.videolan.org/videolan/libplacebo.git
cd libplacebo && meson setup builddir && cd builddir && meson compile && meson install
git submodule update --init
git submodule update --init
meson setup builddir && cd builddir && meson compile && meson install
cd ../.. && meson setup builddir
apt-get install -y libass-dev
apt-get clean && apt-get install -y libass-dev
rm -rf /var/cache/apt/archives/* && apt-get install -y libass-dev
apt-get install -y --no-install-recommends libass-dev
apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/*
df -h
du -h --max-depth=1 / | sort -h

