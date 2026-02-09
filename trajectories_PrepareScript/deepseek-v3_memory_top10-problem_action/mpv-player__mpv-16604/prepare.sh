ls
open "README.md"
open "meson.build"
open "meson.options"
apt-get update && apt-get install -y gcc g++ clang clang++ nasm python3-pip ninja-build pkgconf wine wine32 wine64 rust autoconf automake libtool freetype fribidi little-cms2 luajit libass ffmpeg uchardet mujs libplacebo molten-vk vulkan-loader vulkan-headers alsa-lib evdev-proto jackit libarchive libbluray libcaca libcdio-paranoia libdvdnav libdisplay-info libXinerama libxkbcommon libxpresent libXv openal-soft pipewire rubberband sdl2 sndio v4l_compat wayland-protocols angleproject ca-certificates cc cppwinrt lcms2 libjpeg-turbo lua51 rst2pdf shaderc spirv-cross vapoursynth libssl-dev libxml2-dev zlib1g-dev libavutil-dev libavcodec-dev libavformat-dev libswscale-dev libavfilter-dev libswresample-dev libavresample-dev libass-dev libjpeg-dev libuchardet-dev libvdpau-dev libva-dev libxv-dev libgl1-mesa-dev libegl1-mesa-dev libgles2-mesa-dev libwayland-dev libxrandr-dev libxext-dev libxscrnsaver-dev libxpresent-dev libpulse-dev libasound2-dev libharfbuzz-dev libfribidi-dev libfontconfig1-dev libfreetype6-dev libpng-dev libzimg-dev libdrm-dev libvulkan-dev libshaderc-dev libspirv-cross-c-shared-dev
apt-get update
apt-get install -y gcc g++ clang clang++ nasm python3-pip ninja-build pkgconf autoconf automake libtool libssl-dev libxml2-dev zlib1g-dev libavutil-dev libavcodec-dev libavformat-dev libswscale-dev libavfilter-dev libswresample-dev libass-dev libjpeg-dev libuchardet-dev libvdpau-dev libva-dev libxv-dev libgl1-mesa-dev libegl1-mesa-dev libgles2-mesa-dev libwayland-dev libxrandr-dev libxext-dev libxpresent-dev libpulse-dev libasound2-dev libharfbuzz-dev libfribidi-dev libfontconfig1-dev libfreetype6-dev libpng-dev libzimg-dev libdrm-dev libvulkan-dev
apt-get -f install
apt-get install -y gcc g++ clang clang++ nasm python3-pip ninja-build pkgconf
apt-get remove -y libopencl-clang-12-dev libopencl-clang-dev python3-clang-11 python3-clang-12 python3-clang-13 python3-clang-14 python3-clang-15
apt-get install -y gcc g++
apt-get install -y clang clang++
apt-get install -y nasm
apt-get install -y python3-pip
apt-get install -y ninja-build
apt-get install -y pkgconf
apt-get install -y libssl-dev libxml2-dev zlib1g-dev libavutil-dev libavcodec-dev libavformat-dev libswscale-dev libavfilter-dev libswresample-dev libavresample-dev libass-dev libjpeg-dev libuchardet-dev libvdpau-dev libva-dev libxv-dev libgl1-mesa-dev libegl1-mesa-dev libgles2-mesa-dev libwayland-dev libxrandr-dev libxext-dev libxscrnsaver-dev libxpresent-dev libpulse-dev libasound2-dev libharfbuzz-dev libfribidi-dev libfontconfig1-dev libfreetype6-dev libpng-dev libzimg-dev libdrm-dev libvulkan-dev libshaderc-dev libspirv-cross-c-shared-dev
apt-get install -y libssl-dev libxml2-dev zlib1g-dev libavutil-dev libavcodec-dev libavformat-dev libswscale-dev libavfilter-dev libswresample-dev libass-dev libjpeg-dev libuchardet-dev libvdpau-dev libva-dev libxv-dev libgl1-mesa-dev libegl1-mesa-dev libgles2-mesa-dev libwayland-dev libxrandr-dev libxext-dev libxpresent-dev libpulse-dev libasound2-dev libharfbuzz-dev libfribidi-dev libfontconfig1-dev libfreetype6-dev libpng-dev libzimg-dev libdrm-dev libvulkan-dev libspirv-cross-c-shared-dev
pip install meson
meson setup build
add-apt-repository ppa:jonathonf/ffmpeg-4 -y
apt-get install -y software-properties-common
add-apt-repository ppa:jonathonf/ffmpeg-4 -y
add-apt-repository ppa:savoury1/ffmpeg4 -y
add-apt-repository --remove ppa:jonathonf/ffmpeg-4 -y
apt-get update
apt-get install -y libavcodec-dev libavformat-dev libavutil-dev libswscale-dev libavfilter-dev libswresample-dev
meson setup build
pkg-config --modversion libavcodec
add-apt-repository --remove ppa:savoury1/ffmpeg4 -y
add-apt-repository ppa:jonathonf/ffmpeg-6 -y
add-apt-repository ppa:jonathonf/ffmpeg-5 -y
git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg
cd ffmpeg && ./configure --prefix=/usr/local --enable-shared
make -j$(nproc) && make install
cd .. && meson setup build
apt-get install -y libplacebo-dev
meson setup build
git clone https://code.videolan.org/videolan/libplacebo.git
cd libplacebo && meson setup build
git submodule update --init
meson setup build
ninja -C build && ninja -C build install
cd .. && meson setup build
ninja -C build
cat build/meson-logs/meson-log.txt
cat build/meson-logs/ninja-log.txt
ninja -C build -v
apt-get install -y vulkan-sdk

