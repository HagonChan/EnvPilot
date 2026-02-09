ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "README.md"
sudo apt-get update && sudo apt-get install -y g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine32 wine64 rustup meson
apt-get update && apt-get install -y g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine32 wine64 rustup meson
apt-get install -y g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine64 meson
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt-get install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env && rustc --version && cargo --version
apt-get install -y libssl-dev libxml2-dev zlib1g-dev libavutil-dev libavcodec-dev libavformat-dev libswscale-dev libavfilter-dev libswresample-dev libavresample-dev libass-dev libjpeg-dev libuchardet-dev libvdpau-dev libva-dev libxv-dev libgl1-mesa-dev libegl1-mesa-dev libgles2-mesa-dev libwayland-dev libxrandr-dev libxext-dev libxscrnsaver-dev libxpresent-dev libpulse-dev libasound2-dev libharfbuzz-dev libfribidi-dev libfontconfig1-dev libfreetype6-dev libpng-dev libzimg-dev libdrm-dev libvulkan-dev libshaderc-dev libspirv-cross-c-shared-dev
apt-get install -y libssl-dev libxml2-dev zlib1g-dev libavutil-dev libavcodec-dev libavformat-dev libswscale-dev libavfilter-dev libswresample-dev libass-dev libjpeg-dev libuchardet-dev libvdpau-dev libva-dev libxv-dev libgl1-mesa-dev libegl1-mesa-dev libgles2-mesa-dev libwayland-dev libxrandr-dev libxext-dev libxpresent-dev libpulse-dev libasound2-dev libharfbuzz-dev libfribidi-dev libfontconfig1-dev libfreetype6-dev libpng-dev libzimg-dev libdrm-dev libvulkan-dev libspirv-cross-c-shared-dev
g++ --version && meson --version && ninja --version && rustc --version && cargo --version
meson setup build
pip install --upgrade meson
pip install --upgrade --no-cache-dir meson
pip install --upgrade --trusted-host files.pythonhosted.org meson
meson setup build
wget https://github.com/mesonbuild/meson/releases/download/1.3.0/meson-1.3.0.tar.gz && tar -xzf meson-1.3.0.tar.gz && cd meson-1.3.0 && python3 setup.py install
apt-get install -y wget
wget https://github.com/mesonbuild/meson/releases/download/1.3.0/meson-1.3.0.tar.gz && tar -xzf meson-1.3.0.tar.gz && cd meson-1.3.0 && python3 setup.py install
curl -L https://github.com/mesonbuild/meson/releases/download/1.3.0/meson-1.3.0.tar.gz -o meson-1.3.0.tar.gz && tar -xzf meson-1.3.0.tar.gz && cd meson-1.3.0 && python3 setup.py install
meson --version
cd .. && meson setup build
apt-cache policy libavcodec-dev
apt-cache search libavcodec | grep -i dev
wget https://ffmpeg.org/releases/ffmpeg-6.1.tar.gz && tar -xzf ffmpeg-6.1.tar.gz && cd ffmpeg-6.1 && ./configure --prefix=/usr/local --enable-shared && make -j$(nproc) && make install
wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz && tar -xf ffmpeg-release-amd64-static.tar.xz && cd ffmpeg-6.1-amd64-static && cp -r * /usr/local/
open "meson.build"
edit 'libavcodec = dependency('"'"'libavcodec'"'"', version: '"'"'>= 60.31.102'"'"')' 'libavcodec = dependency('"'"'libavcodec'"'"', version: '"'"'>= 58.134.100'"'"')' False
meson setup build
edit 'libavfilter = dependency('"'"'libavfilter'"'"', version: '"'"'>= 9.12.100'"'"')' 'libavfilter = dependency('"'"'libavfilter'"'"', version: '"'"'>= 7.110.100'"'"')' False
meson setup build
edit 'libavformat = dependency('"'"'libavformat'"'"', version: '"'"'>= 60.16.100'"'"')' 'libavformat = dependency('"'"'libavformat'"'"', version: '"'"'>= 58.76.100'"'"')' False
meson setup build
edit 'libavutil = dependency('"'"'libavutil'"'"', version: '"'"'>= 58.29.100'"'"')' 'libavutil = dependency('"'"'libavutil'"'"', version: '"'"'>= 56.70.100'"'"')' False
meson setup build
edit 'libswresample = dependency('"'"'libswresample'"'"', version: '"'"'>= 4.12.100'"'"')' 'libswresample = dependency('"'"'libswresample'"'"', version: '"'"'>= 3.9.100'"'"')' False
meson setup build
edit 'libswscale = dependency('"'"'libswscale'"'"', version: '"'"'>= 7.5.100'"'"')' 'libswscale = dependency('"'"'libswscale'"'"', version: '"'"'>= 5.9.100'"'"')' False
meson setup build
apt-get install -y libplacebo-dev
meson setup build
edit 'libplacebo = dependency('"'"'libplacebo'"'"', version: '"'"'>=6.338.2'"'"'' 'libplacebo = dependency('"'"'libplacebo'"'"', version: '"'"'>=4.192.1'"'"'' False
meson setup build
meson compile -C build
wget https://github.com/haasn/libplacebo/archive/refs/tags/v6.338.2.tar.gz && tar -xzf v6.338.2.tar.gz && cd libplacebo-6.338.2 && meson setup build && meson compile -C build && meson install -C build
cd libplacebo-6.338.2 && git submodule update --init && meson setup build && meson compile -C build && meson install -C build

