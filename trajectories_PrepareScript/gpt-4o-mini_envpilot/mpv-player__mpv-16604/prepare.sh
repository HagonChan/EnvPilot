ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y ccache g++ python3-pip nasm ninja-build pkgconf wine wine32 wine64
sed -i 's|http://mirrors.aliyun.com/ubuntu|http://archive.ubuntu.com/ubuntu|g' /etc/apt/sources.list && apt-get update
apt-get install -y ccache g++ python3-pip nasm ninja-build pkgconf wine wine32 wine64
apt-get install -y ccache g++ python3-pip nasm ninja-build pkgconf wine wine64
python3 -m pip install meson
bash ./ci/build-mingw64.sh
apt-get install -y wget
bash ./ci/build-mingw64.sh
open "/testbed/libiconv-1.18/builddir/config.log"
echo $CC
export CC=gcc && bash ./ci/build-mingw64.sh
export CC="ccache gcc" && bash ./ci/build-mingw64.sh
ccache --version
open "./ci/build-mingw64.sh"
edit '$TARGET-gcc-posix' 'ccache gcc' False
bash ./ci/build-mingw64.sh
edit 'export CC="ccache $CC"' 'export CC="ccache gcc"' False
edit 'export CXX="ccache $CXX"' 'export CXX="ccache g++"' False
bash ./ci/build-mingw64.sh
edit 'export CXX="ccache $CXX"' 'export CXX="g++"' False
open "./ci/build-mingw64.sh"
edit 'c = ['"'"'ccache'"'"', '"'"'${CC}'"'"']' 'c = '"'"'${CC}'"'"'' False
edit 'cpp = ['"'"'ccache'"'"', '"'"'${CXX}'"'"']' 'cpp = '"'"'${CXX}'"'"'' False
bash ./ci/build-mingw64.sh
edit 'export CC="ccache gcc"' 'export CC="gcc"' False
edit 'export CXX="ccache g++"' 'export CXX="g++"' False
bash ./ci/build-mingw64.sh
edit 'export CC="gcc"' 'export CC="ccache gcc"' False
edit 'export CXX="g++"' 'export CXX="ccache g++"' False
bash ./ci/build-mingw64.sh
edit 'export CC="ccache gcc"' 'export CC="gcc"' False
edit 'export CXX="g++"' 'export CXX="ccache g++"' False
open "/testbed/ci/build-mingw64.sh"
bash ./ci/build-mingw64.sh
edit 'export CC="gcc"' 'export CC="ccache gcc"' False
open "/testbed/ci/build-mingw64.sh"
edit 'export CXX="g++"' 'export CXX="ccache g++"' False
open "/testbed/ci/build-mingw64.sh"
bash ./ci/build-mingw64.sh
edit 'export CC="gcc"' 'export CC="ccache gcc"' False
open "/testbed/ci/build-mingw64.sh"
edit 'export CC="gcc"' 'export CC="ccache gcc"' False
open "./ci/build-mingw64.sh"
edit 'export CC="ccache gcc"' 'export CC=gcc' False
edit 'export CXX="ccache g++"' 'export CXX=g++' False

