ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/tdengine-build.yml"
goto 100
sudo apt update -y && sudo apt install -y build-essential cmake gawk libgeos-dev libjansson-dev liblzma-dev libsnappy-dev libssl-dev libz-dev pkg-config zlib1g
apt update -y && apt install -y build-essential cmake gawk libgeos-dev libjansson-dev liblzma-dev libsnappy-dev libssl-dev libz-dev pkg-config zlib1g
ls -la
./build.sh gen
./build.sh bld
ls -la debug
ls -la debug/CMakeFiles
open "debug/CMakeFiles/CMakeError.log"
open "debug/CMakeFiles/CMakeOutput.log"
ls -la debug/CMakeFiles/ext_geos.dir
open "debug/CMakeFiles/ext_geos.dir/build.make"
ls -la .externals/build/ext_geos
ls -la .externals/build/ext_geos/src/ext_geos-build
open ".externals/build/ext_geos/src/ext_geos-build/Makefile"
ls -la .externals/build/ext_geos/src/ext_geos-build/CMakeFiles
open ".externals/build/ext_geos/src/ext_geos-build/CMakeFiles/CMakeError.log"
open ".externals/build/ext_geos/src/ext_geos-build/CMakeFiles/CMakeOutput.log"
ls -la debug/CMakeFiles/ext_geos.dir
open "debug/CMakeFiles/ext_geos.dir/build.make"
ls -la .externals/build/ext_geos
ls -la .externals/build/ext_geos/src/ext_geos-build
open ".externals/build/ext_geos/src/ext_geos-build/Makefile"
ls -la .externals/build/ext_geos/src/ext_geos-build/CMakeFiles
open ".externals/build/ext_geos/src/ext_geos-build/CMakeFiles/CMakeError.log"
open ".externals/build/ext_geos/src/ext_geos-build/CMakeFiles/CMakeOutput.log"
ls -la debug/CMakeFiles/ext_geos.dir
open "debug/CMakeFiles/ext_geos.dir/build.make"
ls -la .externals/build/ext_geos
ls -la .externals/build/ext_geos/src/ext_geos-build
open ".externals/build/ext_geos/src/ext_geos-build/Makefile"
ls -la .externals/build/ext_geos/src/ext_geos-build/CMakeFiles
open ".externals/build/ext_geos/src/ext_geos-build/CMakeFiles/CMakeError.log"
open ".externals/build/ext_geos/src/ext_geos-build/CMakeFiles/CMakeOutput.log"
ls -la debug/CMakeFiles/ext_geos.dir
open "debug/CMakeFiles/ext_geos.dir/build.make"
ls -la .externals/build/ext_geos
ls -la .externals/build/ext_geos/src/ext_geos-build
open ".externals/build/ext_geos/src/ext_geos-build/Makefile"
ls -la .externals/build/ext_geos/src/ext_geos-build/CMakeFiles
open ".externals/build/ext_geos/src/ext_geos-build/CMakeFiles/CMakeError.log"
open ".externals/build/ext_geos/src/ext_geos-build/CMakeFiles/CMakeOutput.log"
ls -la debug/CMakeFiles/ext_geos.dir
open "debug/CMakeFiles/ext_geos.dir/build.make"
ls -la .externals/build/ext_geos

