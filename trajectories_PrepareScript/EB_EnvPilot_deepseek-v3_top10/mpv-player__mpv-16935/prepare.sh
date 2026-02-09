ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "README.md"
sudo apt-get update && sudo apt-get install --no-install-recommends -y ccache g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine32 wine64
apt-get update && apt-get install --no-install-recommends -y ccache g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine32 wine64
apt-get install --no-install-recommends -y ccache g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine libwine
python3 -m pip install meson
meson setup build
apt-get install --no-install-recommends -y libavcodec-dev libavformat-dev libswscale-dev libavfilter-dev libswresample-dev libavresample-dev libavutil-dev
apt-get install --no-install-recommends -y libavcodec-dev libavformat-dev libswscale-dev libavfilter-dev libswresample-dev libavutil-dev
meson setup build
add-apt-repository ppa:jonathonf/ffmpeg-4 -y && apt-get update
apt-get install --no-install-recommends -y software-properties-common
add-apt-repository ppa:jonathonf/ffmpeg-4 -y && apt-get update
apt-get install --no-install-recommends -y gpg
curl -sSL https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x4AB0F789CBA31744CC7DA76A8CF63AD3F06FC659 | gpg --dearmor | tee /etc/apt/trusted.gpg.d/jonathonf-ubuntu-ffmpeg-4.gpg >/dev/null && apt-get update
open "meson.build"
apt-get install --no-install-recommends -y wget tar xz-utils build-essential yasm cmake libass-dev libfreetype6-dev libsdl2-dev libtheora-dev libtool libva-dev libvdpau-dev libvorbis-dev libxcb1-dev libxcb-shm0-dev libxcb-xfixes0-dev pkg-config texinfo zlib1g-dev
wget https://ffmpeg.org/releases/ffmpeg-6.0.tar.xz && tar -xf ffmpeg-6.0.tar.xz && cd ffmpeg-6.0 && ./configure --prefix=/usr/local --enable-shared --disable-static --enable-gpl --enable-libass --enable-libfreetype --enable-libmp3lame --enable-libtheora --enable-libvorbis --enable-libx264 --enable-libx265 --enable-libvpx --enable-libxvid --enable-nonfree && make -j$(nproc) && make install
apt-get install --no-install-recommends -y libmp3lame-dev
./configure --prefix=/usr/local --enable-shared --disable-static --enable-gpl --enable-libass --enable-libfreetype --enable-libmp3lame --enable-libtheora --enable-libvorbis --enable-libx264 --enable-libx265 --enable-libvpx --enable-libxvid --enable-nonfree && make -j$(nproc) && make install
apt-get install --no-install-recommends -y libvpx-dev
./configure --prefix=/usr/local --enable-shared --disable-static --enable-gpl --enable-libass --enable-libfreetype --enable-libmp3lame --enable-libtheora --enable-libvorbis --enable-libx264 --enable-libx265 --enable-libvpx --enable-libxvid --enable-nonfree && make -j$(nproc) && make install
apt-get install --no-install-recommends -y libx264-dev
./configure --prefix=/usr/local --enable-shared --disable-static --enable-gpl --enable-libass --enable-libfreetype --enable-libmp3lame --enable-libtheora --enable-libvorbis --enable-libx264 --enable-libx265 --enable-libvpx --enable-libxvid --enable-nonfree && make -j$(nproc) && make install
apt-get install --no-install-recommends -y libx265-dev
./configure --prefix=/usr/local --enable-shared --disable-static --enable-gpl --enable-libass --enable-libfreetype --enable-libmp3lame --enable-libtheora --enable-libvorbis --enable-libx264 --enable-libx265 --enable-libvpx --enable-libxvid --enable-nonfree && make -j$(nproc) && make install
apt-get install --no-install-recommends -y libxvidcore-dev
./configure --prefix=/usr/local --enable-shared --disable-static --enable-gpl --enable-libass --enable-libfreetype --enable-libmp3lame --enable-libtheora --enable-libvorbis --enable-libx264 --enable-libx265 --enable-libvpx --enable-libxvid --enable-nonfree && make -j$(nproc) && make install
ffmpeg -version | grep libavcodec
ldconfig /usr/local/lib
ffmpeg -version | grep libavcodec
cd /testbed && meson setup build
open "meson.build"
edit 'libavcodec = dependency('"'"'libavcodec'"'"', version: '"'"'>= 60.31.102'"'"')' 'libavcodec = dependency('"'"'libavcodec'"'"', version: '"'"'>= 60.3.100'"'"')' False
meson setup build
edit 'libavfilter = dependency('"'"'libavfilter'"'"', version: '"'"'>= 9.12.100'"'"')' 'libavfilter = dependency('"'"'libavfilter'"'"', version: '"'"'>= 9.3.100'"'"')' False
meson setup build
edit 'libavformat = dependency('"'"'libavformat'"'"', version: '"'"'>= 60.16.100'"'"')' 'libavformat = dependency('"'"'libavformat'"'"', version: '"'"'>= 60.3.100'"'"')' False
meson setup build
edit 'libavutil = dependency('"'"'libavutil'"'"', version: '"'"'>= 58.29.100'"'"')' 'libavutil = dependency('"'"'libavutil'"'"', version: '"'"'>= 58.2.100'"'"')' False
meson setup build
edit 'libswresample = dependency('"'"'libswresample'"'"', version: '"'"'>= 4.12.100'"'"')' 'libswresample = dependency('"'"'libswresample'"'"', version: '"'"'>= 4.10.100'"'"')' False
meson setup build
edit 'libswscale = dependency('"'"'libswscale'"'"', version: '"'"'>= 7.5.100'"'"')' 'libswscale = dependency('"'"'libswscale'"'"', version: '"'"'>= 7.1.100'"'"')' False
meson setup build
apt-get install --no-install-recommends -y libplacebo-dev
meson setup build

