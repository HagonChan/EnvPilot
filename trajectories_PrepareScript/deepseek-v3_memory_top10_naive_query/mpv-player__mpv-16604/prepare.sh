ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
sudo apt-get update && sudo apt-get install -y g++ gcc clang clang++ nasm python3-pip ninja-build pkgconf wine wine32 wine64 rust autoconf automake libtool freetype fribidi little-cms2 luajit libass ffmpeg uchardet mujs libplacebo molten-vk vulkan-loader vulkan-headers alsa-lib evdev-proto jackit libarchive libbluray libcaca libcdio-paranoia libdvdnav libdisplay-info libXinerama libxkbcommon libxpresent libXv openal-soft pipewire rubberband sdl2 sndio v4l_compat wayland-protocols angleproject ca-certificates cc cppwinrt lcms2 libjpeg-turbo lua51 rst2pdf shaderc spirv-cross vapoursynth libssl-dev libxml2-dev zlib1g-dev libavutil-dev libavcodec-dev libavformat-dev libswscale-dev libavfilter-dev libswresample-dev libavresample-dev libass-dev libjpeg-dev libuchardet-dev libvdpau-dev libva-dev libxv-dev libgl1-mesa-dev libegl1-mesa-dev libgles2-mesa-dev libwayland-dev libxrandr-dev libxext-dev libxscrnsaver-dev libxpresent-dev libpulse-dev libasound2-dev libharfbuzz-dev libfribidi-dev libfontconfig1-dev libfreetype6-dev libpng-dev libzimg-dev libdrm-dev libvulkan-dev libshaderc-dev libspirv-cross-c-shared-dev
apt-get update && apt-get install -y g++ gcc clang clang++ nasm python3-pip ninja-build pkgconf wine wine32 wine64 rust autoconf automake libtool freetype fribidi little-cms2 luajit libass ffmpeg uchardet mujs libplacebo molten-vk vulkan-loader vulkan-headers alsa-lib evdev-proto jackit libarchive libbluray libcaca libcdio-paranoia libdvdnav libdisplay-info libXinerama libxkbcommon libxpresent libXv openal-soft pipewire rubberband sdl2 sndio v4l_compat wayland-protocols angleproject ca-certificates cc cppwinrt lcms2 libjpeg-turbo lua51 rst2pdf shaderc spirv-cross vapoursynth libssl-dev libxml2-dev zlib1g-dev libavutil-dev libavcodec-dev libavformat-dev libswscale-dev libavfilter-dev libswresample-dev libavresample-dev libass-dev libjpeg-dev libuchardet-dev libvdpau-dev libva-dev libxv-dev libgl1-mesa-dev libegl1-mesa-dev libgles2-mesa-dev libwayland-dev libxrandr-dev libxext-dev libxscrnsaver-dev libxpresent-dev libpulse-dev libasound2-dev libharfbuzz-dev libfribidi-dev libfontconfig1-dev libfreetype6-dev libpng-dev libzimg-dev libdrm-dev libvulkan-dev libshaderc-dev libspirv-cross-c-shared-dev
apt-get update && apt-get install -y g++ gcc clang clang++ nasm python3-pip ninja-build pkgconf wine libwine libvulkan-dev libvulkan1 vulkan-validationlayers autoconf automake libtool libass-dev libjpeg-dev libuchardet-dev libvdpau-dev libva-dev libxv-dev libgl1-mesa-dev libegl1-mesa-dev libgles2-mesa-dev libwayland-dev libxrandr-dev libxext-dev libxpresent-dev libpulse-dev libasound2-dev libharfbuzz-dev libfribidi-dev libfontconfig1-dev libfreetype6-dev libpng-dev libzimg-dev libdrm-dev libssl-dev libxml2-dev zlib1g-dev libavutil-dev libavcodec-dev libavformat-dev libswscale-dev libavfilter-dev libswresample-dev
apt-get update && apt-get install -y g++ gcc clang nasm python3-pip ninja-build pkgconf
pip install meson
ls -la ci
./ci/build-mingw64.sh
apt-get install -y wget
./ci/build-mingw64.sh
gcc --version && g++ --version && clang --version
open "ci/build-mingw64.sh"
export TARGET=x86_64-w64-mingw32 && ./ci/build-mingw64.sh
apt-get install -y mingw-w64
export TARGET=x86_64-w64-mingw32 && ./ci/build-mingw64.sh
export CC=x86_64-w64-mingw32-gcc-posix && export CXX=x86_64-w64-mingw32-g++-posix && ./ci/build-mingw64.sh
export CC=x86_64-w64-mingw32-gcc-win32 && export CXX=x86_64-w64-mingw32-g++-win32 && ./ci/build-mingw64.sh
open "libiconv-1.18/builddir/config.log"
apt-get install -y ccache
export TARGET=x86_64-w64-mingw32 && ./ci/build-mingw64.sh
apt-get install -y cmake
export TARGET=x86_64-w64-mingw32 && ./ci/build-mingw64.sh
export TARGET=x86_64-w64-mingw32 && ./ci/build-mingw64.sh --disable-tls-schannel
ls -la test
ls -la meson.build
open "meson.build"
meson test
meson setup builddir
