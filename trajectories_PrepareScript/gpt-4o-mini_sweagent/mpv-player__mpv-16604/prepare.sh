
find_file '*.yml'
open "/testbed/.github/workflows/build.yml"
sudo dpkg --add-architecture i386 && sudo apt-get update && sudo apt-get install --no-install-recommends -y ccache g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine
dpkg --add-architecture i386 && apt-get update && apt-get install --no-install-recommends -y ccache g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine
python3 -m pip install meson
./ci/build-mingw64.sh
apt-get install -y wget
./ci/build-mingw64.sh
open "/testbed/libiconv-1.18/builddir/config.log"
CC=gcc ./ci/build-mingw64.sh
open "/testbed/ci/build-mingw64.sh"
edit 'export CC=$TARGET-gcc-posix' 'export CC=gcc' False
./ci/build-mingw64.sh
open "/testbed/libiconv-1.18/builddir/config.log"
find_file 'README*'
open "/testbed/README.md"
meson setup build
apt-get install -y libavcodec-dev
meson setup build
open "/testbed/libiconv-1.18/README"
search_file libavcodec /testbed/README.md
wget https://ffmpeg.org/releases/ffmpeg-snapshot.tar.bz2
tar -xjf ffmpeg-snapshot.tar.bz2
cd ffmpeg
./configure
make
make install
cd /testbed && meson setup build
apt-get install -y libplacebo-dev
meson setup build
wget https://github.com/haasn/libplacebo/archive/refs/tags/v6.338.2.tar.gz
tar -xzf v6.338.2.tar.gz
cd libplacebo-6.338.2
meson setup build
apt-get install -y g++
meson setup build
wget https://github.com/Dav1dde/glad/archive/refs/tags/2.0.0.tar.gz
git clone https://github.com/Dav1dde/glad.git
cd glad && meson setup ../libplacebo-6.338.2/build
cd ../libplacebo-6.338.2 && meson setup build
cd /testbed/libplacebo-6.338.2 && meson setup build
cp -r glad /testbed/libplacebo-6.338.2/
meson setup build --wipe
cd glad && git submodule update --init
cd /testbed/libplacebo-6.338.2 && meson setup build
cp -r /testbed/glad /testbed/libplacebo-6.338.2/
ls
open "/testbed/libplacebo-6.338.2/meson.build"

