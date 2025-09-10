ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "README.md"
open "meson.build"
sudo apt-get update && sudo apt-get install -y g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine32 wine64
apt-get update && apt-get install -y g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine32 wine64
apt-get install -y g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine64 && pip3 install meson
meson setup build
apt-get install -y libavcodec-dev libavfilter-dev libavformat-dev libavutil-dev libswresample-dev libswscale-dev
meson setup build
apt-cache policy libavcodec-dev
git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg
cd ffmpeg && ./configure --prefix=/usr/local --enable-shared
make -j$(nproc) && make install
cd .. && meson setup build
git clone https://code.videolan.org/videolan/libplacebo.git
git clone https://code.videolan.org/videolan/libplacebo.git
cd libplacebo && meson setup build
git submodule update --init
meson setup build
meson compile -C build && meson install -C build
cd .. && meson setup build
apt-get install -y libass-dev
meson setup build
meson compile -C build
meson install -C build
meson test -C build
mpv --version
