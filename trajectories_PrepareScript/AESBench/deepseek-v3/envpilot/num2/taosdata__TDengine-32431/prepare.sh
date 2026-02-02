ls -la
ls -la .github/workflows
open ".github/workflows/tdengine-build.yml"
open ".github/workflows/tdengine-test.yml"
open "README.md"
goto 93
sudo apt-get update && sudo apt-get install -y gcc cmake build-essential git libjansson-dev libsnappy-dev liblzma-dev zlib1g-dev pkg-config
apt-get update && apt-get install -y gcc cmake build-essential git libjansson-dev libsnappy-dev liblzma-dev zlib1g-dev pkg-config
./build.sh
./build.sh first-try
ls -la debug
ls -la debug/CMakeFiles
open "debug/CMakeFiles/CMakeOutput.log"
open "debug/Makefile"
goto 156
open "debug/CMakeFiles/Makefile2"
ls -la debug/CMakeFiles/*.dir/build.make
open "debug/CMakeFiles/CMakeError.log"
open "debug/CMakeFiles/CMakeOutput.log"
VERBOSE=1 ./build.sh first-try
open "debug/Makefile"
open "debug/CMakeFiles/Makefile2"
open "debug/contrib/lemon/CMakeFiles/lemon.dir/build.make"
open "debug/contrib/lemon/CMakeFiles/lemon.dir/depend.make"
open "debug/contrib/lemon/CMakeFiles/lemon.dir/compiler_depend.make"
open "debug/contrib/lemon/CMakeFiles/lemon.dir/flags.make"
edit 'C_FLAGS =  -std=gnu99  -Wno-unused-result -msse4.2 -Werror -fPIC -g3 -gdwarf-2 -Wno-format-truncation -Wno-write-strings -Wno-format-overflow -Wno-stringop-overread -g' 'C_FLAGS =  -std=gnu99  -Wno-unused-result -msse4.2 -fPIC -g3 -gdwarf-2 -Wno-format-truncation -Wno-write-strings -Wno-format-overflow -Wno-stringop-overread -g'
./build.sh first-try
open "debug/CMakeCache.txt"
search_file lemon debug/CMakeCache.txt
open "CMakeLists.txt"
open "contrib/lemon/CMakeLists.txt"
open "contrib/lemon/lemon.c"
VERBOSE=1 ./build.sh first-try
open "debug/CMakeFiles/Makefile2"
open "debug/contrib/CMakeFiles/Makefile"
ls -la debug/CMakeFiles
open "debug/CMakeFiles/CMakeOutput.log"
open "debug/CMakeFiles/CMakeError.log"
VERBOSE=1 ./build.sh first-try
open "debug/Makefile"
goto 156
open "debug/CMakeFiles/Makefile2"
open "debug/contrib/lemon/CMakeFiles/lemon.dir/build.make"
open "debug/CMakeFiles/CMakeError.log"
VERBOSE=1 ./build.sh first-try
open "debug/Makefile"
goto 156
open "debug/CMakeFiles/Makefile2"

