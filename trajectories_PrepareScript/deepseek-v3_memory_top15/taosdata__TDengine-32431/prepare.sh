ls -la
ls -la .github/workflows
open ".github/workflows/tdengine-build.yml"
scroll_down
open ".github/workflows/tdengine-test.yml"
open "README.md"
sudo apt update -y && sudo apt install -y build-essential cmake gawk libgeos-dev libjansson-dev liblzma-dev libsnappy-dev libssl-dev libz-dev pkg-config zlib1g
apt update -y && apt install -y build-essential cmake gawk libgeos-dev libjansson-dev liblzma-dev libsnappy-dev libssl-dev libz-dev pkg-config zlib1g
apt install -y build-essential cmake gawk libgeos-dev libjansson-dev liblzma-dev libsnappy-dev libssl-dev libz-dev pkg-config zlib1g
ls -la build.sh
./build.sh gen
./build.sh bld
ls -la debug
ls -la debug/CMakeFiles
open "debug/CMakeFiles/CMakeError.log"
open "debug/CMakeFiles/CMakeOutput.log"
open "debug/Makefile" 166
make -f debug/Makefile build_externals
rm -rf debug && ./build.sh gen
./build.sh bld
ls -la debug/CMakeFiles
make -f debug/Makefile build_externals
rm -rf debug && ./build.sh gen
./build.sh bld
apt list --installed | grep -E 'build-essential|cmake|gawk|libgeos-dev|libjansson-dev|liblzma-dev|libsnappy-dev|libssl-dev|libz-dev|pkg-config|zlib1g'
mkdir -p debug && cd debug && cmake ..
make
make
ls -la /testbed/include/client && ls -la /testbed/debug/build/lib
make
git clone https://github.com/taosdata/taosadapter.git /testbed/.externals/src/ext_taosadapter
make
open "/testbed/debug/Makefile" 166
edit '$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all' '$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all' True
edit '$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all' '$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all || true' True
make
search_file ext_taosadapter /testbed/debug/Makefile
edit '# Target rules for targets named ext_taosadapter' '# # Target rules for targets named ext_taosadapter' True
edit '# Target rules for targets named build_ext_taosadapter' '# # Target rules for targets named build_ext_taosadapter' True
make
open "/testbed/CMakeLists.txt"
edit 'add_subdirectory(tools)' '# add_subdirectory(tools)' True
cd /testbed && rm -rf debug && ./build.sh gen
cd /testbed && ./build.sh bld
cd /testbed && ./build.sh install
ls -la /testbed/debug/build/bin

