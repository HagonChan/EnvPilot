ls -la
ls -la .github/workflows
open ".github/workflows/tdengine-build.yml"
open ".github/workflows/tdengine-test.yml"
open "README.md"
goto 92
sudo apt-get update && sudo apt-get install -y gcc cmake build-essential git libjansson-dev libsnappy-dev liblzma-dev zlib1g-dev pkg-config
apt-get update && apt-get install -y gcc cmake build-essential git libjansson-dev libsnappy-dev liblzma-dev zlib1g-dev pkg-config
ls -la build.sh
./build.sh
./build.sh gen
./build.sh bld
ls -la debug/build/CMakeFiles/CMakeOutput.log
ls -la debug/build/CMakeFiles
./build.sh bld VERBOSE=1
cd debug && make VERBOSE=1
make
mkdir -p .externals/build/ext_pcre2/src/ext_pcre2
git clone https://github.com/PCRE2Project/pcre2.git .externals/build/ext_pcre2/src/ext_pcre2
apt-get install -y libpcre2-dev
make
ls -la tools/ext_taosadapter
git clone https://github.com/taosdata/taosadapter.git tools/ext_taosadapter
make
ls -la CMakeLists.txt
cd .. && ls -la CMakeLists.txt
open "CMakeLists.txt"
open "cmake/external.cmake"
search_file ext_taosadapter cmake/external.cmake
open "tools/CMakeLists.txt"
edit 'ExternalProject_Add(ext_taosadapter' '# ExternalProject_Add(ext_taosadapter' True
cd debug && make
edit 'set(_git_url "https://github.com/taosdata/taosadapter.git")' '# set(_git_url "https://github.com/taosdata/taosadapter.git")' True
make
search_file _git_url tools/CMakeLists.txt
scroll_down
edit 'GIT_REPOSITORY ${_git_url}' '# GIT_REPOSITORY ${_git_url}' True
make
search_file _base tools/CMakeLists.txt
scroll_up
search_file 'set(_base' tools/CMakeLists.txt
scroll_down
scroll_up
search_file 'set(_base' tools/CMakeLists.txt
scroll_up
search_file _base tools/CMakeLists.txt
scroll_up
search_file _base tools/CMakeLists.txt
scroll_up

