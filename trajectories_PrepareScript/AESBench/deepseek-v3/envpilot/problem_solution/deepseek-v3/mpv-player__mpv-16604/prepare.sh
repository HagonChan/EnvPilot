ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
sudo apt-get update && sudo apt-get install --no-install-recommends -y g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine32 wine64 rust
apt-get update && apt-get install --no-install-recommends -y g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine32 wine64 rust
apt-get update && apt-get install --no-install-recommends -y g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine64
pip install meson
ls -la ci/
bash ci/build-mingw64.sh
apt-get install -y wget ccache
bash ci/build-mingw64.sh
apt-get install -y mingw-w64
which i686-w64-mingw32-gcc x86_64-w64-mingw32-gcc
open "ci/build-mingw64.sh"
apt-get install -y gcc-mingw-w64-base gcc-mingw-w64-i686-posix gcc-mingw-w64-x86-64-posix
export TARGET=x86_64-w64-mingw32 && bash ci/build-mingw64.sh
wait
meson test
meson setup builddir
apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libavfilter-dev libswresample-dev libavutil-dev
meson setup builddir
apt-cache policy libavcodec-dev
git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg
cd ffmpeg && git pull
git pull
./configure --prefix=/usr/local
make -j$(nproc) && make install
pkg-config --modversion libavcodec
cd .. && meson setup builddir
apt-get install -y libplacebo-dev
meson setup builddir
git clone https://code.videolan.org/videolan/libplacebo.git
cd libplacebo && git pull
meson setup builddir && cd builddir && meson compile && meson install
apt-get install -y g++
meson setup builddir && cd builddir && meson compile && meson install
cd ../.. && meson setup builddir
apt-get install -y libass-dev
meson setup builddir
cd builddir && ninja
apt-cache policy vulkan-loader
apt-get install -y vulkan-loader vulkan-headers
apt-get install -y libvulkan1 libvulkan-dev
git clone https://github.com/KhronosGroup/Vulkan-Headers.git
cd Vulkan-Headers && mkdir build && cd build && cmake .. && make -j$(nproc) && make install
apt-get install -y cmake
cmake .. && make -j$(nproc) && make install
cd ../.. && git clone https://github.com/KhronosGroup/Vulkan-Loader.git
cd Vulkan-Loader && mkdir build && cd build && cmake .. && make -j$(nproc) && make install

