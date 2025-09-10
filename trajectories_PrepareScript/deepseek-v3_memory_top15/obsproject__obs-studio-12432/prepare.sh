ls -la
ls -la .github/workflows
open ".github/workflows/build-project.yaml"
search_file ubuntu
goto 171
ls -la .github/actions
open ".github/actions/build-obs/action.yml"
ls -la .github/actions/build-obs
open ".github/actions/build-obs/action.yaml"
open ".github/scripts/build-ubuntu"
open "buildspec.json"
apt-get update && apt-get install -y gcc make cmake libx11-dev libgl1-mesa-dev libpulse-dev libv4l-dev libudev-dev libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxcb-shm0-dev libxcb1-dev libx11-xcb-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev libcurl4-openssl-dev libgtk-3-dev libjansson-dev libspeexdsp-dev libluajit-5.1-dev python3-dev swig libmbedtls-dev libasound2-dev libavcodec-dev libavdevice-dev libavfilter-dev libavformat-dev libavutil-dev libswresample-dev libswscale-dev libfdk-aac-dev libopus-dev libvpx-dev libx264-dev libx265-dev
wget https://cdn-fastly.obsproject.com/downloads/cef_binary_6533_ubuntu-x86_64.tar.gz
apt-get install -y wget
wget https://cdn-fastly.obsproject.com/downloads/cef_binary_6533_ubuntu-x86_64.tar.gz
search_file cef
goto 28
wget https://github.com/obsproject/obs-deps/releases/download/2025-07-11/cef_binary_6533_ubuntu-x86_64.tar.gz
curl -s https://api.github.com/repos/obsproject/obs-deps/releases/latest | grep -o 'browser_download_url.*'
apt-get install -y curl
curl -s https://api.github.com/repos/obsproject/obs-deps/releases/latest | grep -o 'browser_download_url.*'
git clone https://bitbucket.org/chromiumembedded/cef.git
cd cef
apt-get install -y git python3 python3-pip ninja-build
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
export PATH="$PATH:$(pwd)/depot_tools"
gclient sync
echo "solutions = [
  {
    "name": "src",
    "url": "https://chromium.googlesource.com/chromium/src.git",
    "deps_file": "DEPS",
    "managed": False,
    "custom_deps": {},
    "custom_vars": {},
  },
]" > .gclient
gclient sync
echo "solutions = [
  {
    \"name\": \"src\",
    \"url\": \"https://chromium.googlesource.com/chromium/src.git\",
    \"deps_file\": \"DEPS\",
    \"managed\": False,
    \"custom_deps\": {},
    \"custom_vars\": {},
  },
]" > .gclient
gclient sync
gclient sync
cd ..
mkdir build && cd build
cmake ..
apt-cache policy cmake
wget https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz
curl -L -O https://github.com/Kitware/CMake/releases/download/v3.28.0/cmake-3.28.0-linux-x86_64.tar.gz
tar -xzf cmake-3.28.0-linux-x86_64.tar.gz
export PATH="$PATH:$(pwd)/cmake-3.28.0-linux-x86_64/bin"
cmake ..
cmake --version
./cmake-3.28.0-linux-x86_64/bin/cmake ..
apt-get install -y extra-cmake-modules
apt-get clean
apt-get install -y extra-cmake-modules
df -h
du -h --max-depth=1 / | sort -hr | head -n 20
rm -rf /tmp/*

