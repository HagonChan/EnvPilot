ls -la
ls -la .github/workflows
open ".github/workflows/tdengine-build.yml"
goto 100
open "build.sh"
open "CMakeLists.txt"
open "README.md"
sudo apt update -y && sudo apt install -y build-essential cmake gawk libgeos-dev libjansson-dev liblzma-dev libsnappy-dev libssl-dev libz-dev pkg-config zlib1g
apt update -y && apt install -y build-essential cmake gawk libgeos-dev libjansson-dev liblzma-dev libsnappy-dev libssl-dev libz-dev pkg-config zlib1g
./build.sh gen
./build.sh bld
ls -la debug
find debug/CMakeFiles -name "*.log" -type f
open "debug/CMakeFiles/CMakeOutput.log"
open "debug/CMakeFiles/CMakeError.log"
open "debug/Makefile"
gmake VERBOSE=1
./build.sh gen
gmake VERBOSE=1
cd debug && make VERBOSE=1
make VERBOSE=1
curl -I https://github.com
wget --spider https://github.com
apt install -y curl
curl -I https://github.com
ls -la .externals/build/ext_pcre2/src
