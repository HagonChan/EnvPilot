ls -la
ls -la .github/workflows
open ".github/workflows/tdengine-build.yml"
goto 100
sudo apt update -y && sudo apt install -y build-essential cmake gawk libgeos-dev libjansson-dev liblzma-dev libsnappy-dev libssl-dev libz-dev pkg-config zlib1g
apt update -y && apt install -y build-essential cmake gawk libgeos-dev libjansson-dev liblzma-dev libsnappy-dev libssl-dev libz-dev pkg-config zlib1g
ls -la
export TD_CONFIG=Release && ./build.sh gen -DTD_EXTERNALS_USE_ONLY:BOOL=ON
export TD_CONFIG=Release && ./build.sh bld
apt install -y libxxhash-dev golang cargo
export TD_CONFIG=Release && ./build.sh bld
open "tools/keeper/go.mod"
edit 'go 1.23.0' 'go 1.18' False
rm -f .externals/build/ext_taosws/src/ext_taosws/Cargo.lock
export TD_CONFIG=Release && ./build.sh bld
export TD_CONFIG=Release && ./build.sh bld
ls -la .externals/ext_tz
apt search libtz
open ".github/workflows/tdengine-build.yml"
git submodule status
open "build.sh"
search_file --locked build.sh
find_file CMakeLists.txt
export TD_CONFIG=Release && ./build.sh bld --verbose
find_file CMakeLists.txt .externals/build/ext_taosws
open "CMakeLists.txt"
open "cmake/external.cmake"
search_file ext_taosws cmake/external.cmake
edit 'cargo build --release --locked -p taos-ws-sys --features rustls' 'cargo build --release -p taos-ws-sys --features rustls' False
export TD_CONFIG=Release && ./build.sh bld
rustc --version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env && rustc --version
export TD_CONFIG=Release && ./build.sh bld
rustup install 1.75.0 && rustup default 1.75.0
rustc --version
export TD_CONFIG=Release && ./build.sh bld
apt install -y libgtest-dev
apt install -y golang-1.18 && update-alternatives --set go /usr/lib/go-1.18/bin/go
go version
search_dir libtz.a
search_file libtz.a cmake/external.cmake
find_file ext_tz
open "README.md"
export TD_CONFIG=Release && ./build.sh bld
cd /usr/src/gtest && cmake CMakeLists.txt && make && cp *.a /usr/lib
cd /usr/src/gtest && cp lib/*.a /usr/lib

