ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
sudo apt-get update && sudo apt-get install --no-install-recommends -y ccache g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine32 wine64
apt-get update && apt-get install --no-install-recommends -y ccache g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine32 wine64
pip install meson
apt-get install -y python3-pip
pip install meson
apt-get install -y gcc g++ clang clang++ nasm ninja-build pkgconf
apt-get install -y clang clang++ nasm ninja-build pkgconf
apt-get install -y nasm ninja-build pkgconf
apt-get install -y libssl-dev libxml2-dev zlib1g-dev libavutil-dev libavcodec-dev libavformat-dev libswscale-dev libavfilter-dev libswresample-dev libavresample-dev libass-dev libjpeg-dev libuchardet-dev libvdpau-dev libva-dev libxv-dev libgl1-mesa-dev libegl1-mesa-dev libgles2-mesa-dev libwayland-dev libxrandr-dev libxext-dev libxscrnsaver-dev libxpresent-dev libpulse-dev libasound2-dev libharfbuzz-dev libfribidi-dev libfontconfig1-dev libfreetype6-dev libpng-dev libzimg-dev libdrm-dev libvulkan-dev libshaderc-dev libspirv-cross-c-shared-dev
apt-get install -y libssl-dev libxml2-dev zlib1g-dev libavutil-dev libavcodec-dev libavformat-dev libswscale-dev libavfilter-dev libswresample-dev libass-dev libjpeg-dev libuchardet-dev libvdpau-dev libva-dev libxv-dev libgl1-mesa-dev libegl1-mesa-dev libgles2-mesa-dev libwayland-dev libxrandr-dev libxext-dev libxpresent-dev libpulse-dev libasound2-dev libharfbuzz-dev libfribidi-dev libfontconfig1-dev libfreetype6-dev libpng-dev libzimg-dev libdrm-dev libvulkan-dev libspirv-cross-c-shared-dev
apt-get install -y rust autoconf automake libtool freetype fribidi little-cms2 luajit libass ffmpeg uchardet mujs libplacebo molten-vk vulkan-loader vulkan-headers alsa-lib evdev-proto jackit libarchive libbluray libcaca libcdio-paranoia libdvdnav libdisplay-info libXinerama libxkbcommon libxpresent libXv openal-soft pipewire rubberband sdl2 sndio v4l_compat wayland-protocols angleproject ca-certificates cc cppwinrt lcms2 libjpeg-turbo lua51 rst2pdf shaderc spirv-cross vapoursynth
apt-get install -y autoconf automake libtool ffmpeg uchardet mujs wayland-protocols ca-certificates rst2pdf spirv-cross
apt-get install -y rustc libfreetype6-dev libfribidi-dev libass-dev libvulkan-dev libasound2-dev libjackd2 libarchive-tools libbluray-dev libcaca-dev libcdio-dev libdvdnav-dev libxinerama-dev libxkbcommon-dev libxpresent-dev libxv-dev libopenal-dev libsdl2-dev libsndio-dev libv4l-dev libwayland-dev libzimg-dev
apt-get install -y rustc libfreetype6-dev libfribidi-dev libass-dev libvulkan-dev libasound2-dev libarchive-tools libbluray-dev libcaca-dev libcdio-dev libdvdnav-dev libxinerama-dev libxkbcommon-dev libxpresent-dev libxv-dev libopenal-dev libsdl2-dev libsndio-dev libv4l-dev libwayland-dev libzimg-dev
rustc --version
meson --version && ninja --version
mkdir -p build && meson setup build
apt-cache policy libavcodec-dev
open "meson.build"
edit 'libavcodec = dependency('"'"'libavcodec'"'"', version: '"'"'>= 60.31.102'"'"')' 'libavcodec = dependency('"'"'libavcodec'"'"', version: '"'"'>= 58.134.100'"'"')'
edit 'libavcodec = dependency('"'"'libavcodec'"'"', version: '"'"'>= 60.31.102'"'"')' 'libavcodec = dependency('"'"'libavcodec'"'"', version: '"'"'>= 58.134.100'"'"')'
sed -i "s/libavcodec = dependency('libavcodec', version: '>= 60.31.102')/libavcodec = dependency('libavcodec', version: '>= 58.134.100')/g" meson.build
meson setup build
sed -i "s/libavfilter = dependency('libavfilter', version: '>= 9.12.100')/libavfilter = dependency('libavfilter', version: '>= 7.110.100')/g" meson.build && sed -i "s/libavformat = dependency('libavformat', version: '>= 60.16.100')/libavformat = dependency('libavformat', version: '>= 58.76.100')/g" meson.build && sed -i "s/libavutil = dependency('libavutil', version: '>= 58.29.100')/libavutil = dependency('libavutil', version: '>= 56.70.100')/g" meson.build && sed -i "s/libswresample = dependency('libswresample', version: '>= 4.12.100')/libswresample = dependency('libswresample', version: '>= 3.7.100')/g" meson.build && sed -i "s/libswscale = dependency('libswscale', version: '>= 7.5.100')/libswscale = dependency('libswscale', version: '>= 5.9.100')/g" meson.build
meson setup build
apt-get install -y libplacebo-dev
meson setup build
apt-cache policy libplacebo-dev
git clone https://code.videolan.org/videolan/libplacebo.git
cd libplacebo && meson setup build
git submodule update --init
meson setup build
ls -la 3rdparty/glad
rm -rf 3rdparty/glad && git submodule update --init 3rdparty/glad
meson setup build
ninja -C build
ninja -C build install
cd .. && meson setup build
ninja -C build
grep -r "av_guess_codec" .
open "common/encode_lavc.c"
search_file av_guess_codec common/encode_lavc.c
edit 'codec = avcodec_find_encoder(av_guess_codec(ctx->oformat, NULL,' 'codec = avcodec_find_encoder(av_guess_codec((AVOutputFormat *)ctx->oformat, NULL,'
sed -i '718s/av_guess_codec(ctx->oformat/av_guess_codec((AVOutputFormat *)ctx->oformat/' common/encode_lavc.c
ninja -C build
apt-cache policy ffmpeg

