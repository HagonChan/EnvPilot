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
apt-get install -y git build-essential yasm nasm cmake libx264-dev libx265-dev libvpx-dev libmp3lame-dev libopus-dev libfdk-aac-dev libass-dev libtheora-dev libvorbis-dev libwebp-dev libsdl2-dev libva-dev libvdpau-dev libxcb-shm0-dev libxcb-xfixes0-dev zlib1g-dev libbz2-dev libnuma-dev
git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg
cd ffmpeg && ./configure --prefix=/usr/local --enable-gpl --enable-libx264 --enable-libx265 --enable-libvpx --enable-libmp3lame --enable-libopus --enable-libfdk-aac --enable-libass --enable-libtheora --enable-libvorbis --enable-libwebp --enable-sdl2
./configure --prefix=/usr/local --enable-gpl --enable-libx264 --enable-libx265 --enable-libvpx --enable-libmp3lame --enable-libopus --enable-libass --enable-libtheora --enable-libvorbis --enable-libwebp --enable-sdl2
make -j$(nproc) && make install
cd .. && meson setup build
apt-get install -y libplacebo-dev
meson setup build
git clone https://code.videolan.org/videolan/libplacebo.git && cd libplacebo && meson setup build && meson compile -C build && meson install -C build
git submodule update --init && meson setup build && meson compile -C build && meson install -C build
cd .. && meson setup build
meson compile -C build
cat build/meson-logs/meson-log.txt
mkdir -p /usr/local/share/doc/mpv /usr/local/share/bash-completion/completions /usr/local/share/zsh/site-functions /usr/local/share/fish/vendor_completions.d /usr/local/share/metainfo /usr/local/share/icons/hicolor/16x16/apps /usr/local/share/icons/hicolor/32x32/apps /usr/local/share/icons/hicolor/64x64/apps /usr/local/share/icons/hicolor/128x128/apps /usr/local/share/icons/hicolor/scalable/apps /usr/local/share/icons/hicolor/symbolic/apps /usr/local/share/applications && meson compile -C build
apt-get install -y vulkan-headers
apt-get install -y libvulkan-dev
cd ffmpeg && ./configure --prefix=/usr/local --enable-gpl --enable-libx264 --enable-libx265 --enable-libvpx --enable-libmp3lame --enable-libopus --enable-libass --enable-libtheora --enable-libvorbis --enable-libwebp --enable-sdl2 --disable-vulkan && make -j$(nproc) && make install
cd .. && meson compile -C build
cd libplacebo && meson setup build -Dvulkan=disabled && meson compile -C build && meson install -C build
cd .. && meson compile -C build
meson test -C build
wine ./build/mpv.com -v --no-config
dpkg --add-architecture i386 && apt-get update && apt-get install -y wine32
ls -la build
./build/mpv -v --no-config
