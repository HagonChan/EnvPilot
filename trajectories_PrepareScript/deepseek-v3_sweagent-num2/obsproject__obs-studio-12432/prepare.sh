ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/build-project.yaml"
open ".github/workflows/push.yaml"
open ".cirrus.yml"
ls -la
open "README.rst"
open "INSTALL"
open "CMakeLists.txt"
find . -name "requirements.txt" -o -name "setup.py" -o -name "pyproject.toml"
open "CONTRIBUTING.rst"
find . -name "Makefile"
ls -la cmake
ls -la cmake/linux
open "cmake/linux/defaults.cmake"
open "cmake/linux/helpers.cmake"
open "CMakeLists.txt"
open "plugins/CMakeLists.txt"
open "libobs/CMakeLists.txt"
sudo apt-get update && sudo apt-get install -y cmake git ffmpeg zlib1g-dev libjansson-dev libqt6core6 libuthash-dev
apt-get update && apt-get install -y cmake git ffmpeg zlib1g-dev libjansson-dev libqt6core6 libuthash-dev
apt-get install -y cmake git ffmpeg zlib1g-dev libjansson-dev libqt6core6
mkdir -p build && cd build
cmake ..
wget https://github.com/Kitware/CMake/releases/download/v3.28.3/cmake-3.28.3-linux-x86_64.tar.gz && tar -xzf cmake-3.28.3-linux-x86_64.tar.gz --strip-components=1 -C /usr/local
apt-get install -y wget
wget https://github.com/Kitware/CMake/releases/download/v3.28.3/cmake-3.28.3-linux-x86_64.tar.gz && tar -xzf cmake-3.28.3-linux-x86_64.tar.gz --strip-components=1 -C /usr/local
tar -xzf cmake-3.28.3-linux-x86_64.tar.gz --strip-components=1 -C /usr/local
cmake --version
export PATH=/usr/local/bin:$PATH && cmake --version
cmake ..
apt-get install -y build-essential
g++ --version
cmake ..
apt-get install -y extra-cmake-modules
cmake ..
apt-get install -y ffmpeg libavformat-dev libavutil-dev libswscale-dev libswresample-dev libavcodec-dev
cmake ..
wget https://ffmpeg.org/releases/ffmpeg-6.1.tar.gz
tar -xzf ffmpeg-6.1.tar.gz && cd ffmpeg-6.1
./configure --prefix=/usr/local --enable-shared
apt-get install -y nasm
./configure --prefix=/usr/local --enable-shared
make -j$(nproc) && make install
ffmpeg -version
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH && ffmpeg -version
cd /testbed/build
cmake ..

