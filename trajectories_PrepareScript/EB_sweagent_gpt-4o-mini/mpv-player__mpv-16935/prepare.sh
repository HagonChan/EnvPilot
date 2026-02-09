
find_file '*.yml'
open "/testbed/.github/workflows/build.yml"
apt-get update
apt-get install --no-install-recommends -y ccache g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine32 wine64
apt-get install --no-install-recommends -y ccache g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf libwine
python3 -m pip install meson
./ci/build-mingw64.sh
apt-get install -y wget
./ci/build-mingw64.sh
open "/testbed/libiconv-1.18/builddir/config.log"
CC=gcc ./ci/build-mingw64.sh
CC=gcc ./ci/build-mingw64.sh
export CC=gcc && ./ci/build-mingw64.sh
ln -s $(which gcc) /usr/bin/ccache
CC=gcc ./ci/build-mingw64.sh
find_file Makefile
open "/testbed/libiconv-1.18/tools/Makefile"
find_file README.md
open "/testbed/README.md"
meson setup build && meson compile -C build
apt-get install -y libavcodec-dev
meson setup build && meson compile -C build
apt-cache search libavcodec
add-apt-repository ppa:jonathonf/ffmpeg-4 && apt-get update && apt-get install -y libavcodec-dev
wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-i686-static.tar.xz
tar -xf ffmpeg-release-i686-static.tar.xz
export PKG_CONFIG_PATH=$(pwd)/ffmpeg-*/lib/pkgconfig && meson setup build && meson compile -C build
cp -r ffmpeg-*/lib/* /usr/local/lib/
ls ffmpeg-*
export PKG_CONFIG_PATH=$(pwd)/ffmpeg-7.0.2-i686-static/lib/pkgconfig && meson setup build && meson compile -C build
export LD_LIBRARY_PATH=$(pwd)/ffmpeg-7.0.2-i686-static && meson setup build && meson compile -C build
search_dir test
open "/testbed/.github/workflows/build.yml"
cd artifact && wine ./mpv.com -v --no-config
meson test -C build
wget https://ffmpeg.org/releases/ffmpeg-snapshot.tar.bz2
tar -xjf ffmpeg-snapshot.tar.bz2
cd ffmpeg && ./configure --enable-shared && make
make
make install
meson setup build && meson compile -C build
cd /testbed && meson setup build && meson compile -C build
apt-get install -y libplacebo-dev
meson setup build && meson compile -C build
apt-cache search libplacebo
wget https://github.com/haasn/libplacebo/archive/refs/tags/v6.338.2.tar.gz
tar -xzf v6.338.2.tar.gz
cd libplacebo-6.338.2 && meson setup build && meson compile -C build && meson install -C build

