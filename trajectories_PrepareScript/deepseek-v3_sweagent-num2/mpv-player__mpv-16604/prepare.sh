ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
sudo apt-get update && sudo apt-get install --no-install-recommends -y ccache g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine64
apt-get update && apt-get install --no-install-recommends -y ccache g++-mingw-w64 gcc-multilib python3-pip nasm ninja-build pkgconf wine wine64
python3 -m pip install meson
mkdir -p subprojects && meson wrap install mujs && meson subprojects download
meson wrap install mujs && meson subprojects download
ls -la ci/
ci/build-mingw64.sh
apt-get install -y wget
ci/build-mingw64.sh
gcc --version
ccache --version
ls -la /usr/bin/gcc-posix
apt-get install -y gcc-mingw-w64
ls -la /usr/bin/gcc-posix
ls -la /usr/bin/*mingw*
ln -s /usr/bin/x86_64-w64-mingw32-gcc-posix /usr/bin/gcc-posix
gcc-posix --version
ci/build-mingw64.sh
open "ci/build-mingw64.sh"
edit 'export CC="ccache $CC"' 'export CC="ccache $CC"
export CXX="ccache $CXX"' True
edit 'export CXX="ccache $CXX"
export CXX="ccache $CXX"' 'export CXX="ccache $CXX"' True
ci/build-mingw64.sh
edit 'export CC="ccache $CC"' 'export CC="ccache /usr/bin/$CC"' True
edit 'export CXX="ccache $CXX"' 'export CXX="ccache /usr/bin/$CXX"' True
ci/build-mingw64.sh
echo $CC
edit 'export CC="ccache /usr/bin/$CC"' 'export CC="x86_64-w64-mingw32-gcc-posix"
export CC="ccache /usr/bin/$CC"' True
edit 'export CC="x86_64-w64-mingw32-gcc-posix"
export CC="ccache /usr/bin/$CC"' 'export CC="ccache /usr/bin/x86_64-w64-mingw32-gcc-posix"' True
edit 'export CXX="ccache /usr/bin/$CXX"' 'export CXX="ccache /usr/bin/x86_64-w64-mingw32-g++-posix"' True
ci/build-mingw64.sh
edit '../configure --host=$TARGET $commonflags' '../configure --host=$TARGET --build=$(../config.guess) $commonflags' True
ci/build-mingw64.sh
ls -la libiconv-1.18/
ls -la libiconv-1.18/build-aux/
edit '../configure --host=$TARGET --build=$(../config.guess) $commonflags' '../configure --host=$TARGET --build=$(../build-aux/config.guess) $commonflags' True
ci/build-mingw64.sh
edit '../configure --host=$TARGET --build=$(../build-aux/config.guess) $commonflags' '../configure --host=$TARGET --build=$(../build-aux/config.guess) $commonflags --disable-shared --enable-static' True
ci/build-mingw64.sh
edit '../configure --host=$TARGET --build=$(../build-aux/config.guess) $commonflags --disable-shared --enable-static' 'cross_compiling=yes ../configure --host=$TARGET --build=$(../build-aux/config.guess) $commonflags --disable-shared --enable-static' True
ci/build-mingw64.sh
cd libiconv-1.18 && cross_compiling=yes ./configure --host=x86_64-w64-mingw32 --build=$(./build-aux/config.guess) --disable-shared --enable-static
make
make install
cd .. && ci/build-mingw64.sh
cd libiconv-1.18 && make distclean && cd .. && ci/build-mingw64.sh
edit '../configure --host=$TARGET --build=$(../build-aux/config.guess) $commonflags --disable-shared --enable-static' 'cross_compiling=yes ../configure --host=$TARGET --build=$(../build-aux/config.guess) $commonflags --disable-shared --enable-static' True

