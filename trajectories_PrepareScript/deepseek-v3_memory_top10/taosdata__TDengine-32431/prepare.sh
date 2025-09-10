ls -la
ls -la .github/workflows
open ".github/workflows/tdengine-build.yml"
search_file ubuntu .github/workflows/tdengine-build.yml
search_file run: .github/workflows/tdengine-build.yml
search_file 'if: runner.os' .github/workflows/tdengine-build.yml
goto 102
sudo apt update -y && sudo apt install -y build-essential cmake gawk libgeos-dev libjansson-dev liblzma-dev libsnappy-dev libssl-dev libz-dev pkg-config zlib1g
apt update -y && apt install -y build-essential cmake gawk libgeos-dev libjansson-dev liblzma-dev libsnappy-dev libssl-dev libz-dev pkg-config zlib1g
cmake --version && gcc --version
open "build.sh"
./build.sh gen
./build.sh bld
cat debug/CMakeFiles/CMakeOutput.log
cat debug/CMakeFiles/CMakeError.log
./build.sh bld VERBOSE=1
cd debug && make VERBOSE=1
apt install -y golang
go version
cd /testbed && ./build.sh bld
open "tools/keeper/go.mod"
edit 'go 1.23.0' 'go 1.23' False
cd /testbed && ./build.sh bld
cat /testbed/debug/CMakeFiles/ext_avro.dir/build.make
ls -la /testbed/.externals/build/ext_avro/src/ext_avro
cd /testbed/.externals/build/ext_avro/src/ext_avro && ./build.sh
cd /testbed/.externals/build/ext_avro/src/ext_avro && ./build.sh test
apt install -y openjdk-11-jdk
java -version
cd /testbed && ./build.sh bld
cat /testbed/debug/CMakeFiles/ext_pcre2.dir/build.make
ls -la /testbed/.externals/build/ext_pcre2/src/ext_pcre2
cd /testbed/.externals/build/ext_pcre2/src/ext_pcre2 && ./configure
cd /testbed/.externals/build/ext_pcre2/src/ext_pcre2 && make
cd /testbed && ./build.sh bld
goto 166
open "Makefile"
ls -la /testbed/debug
open "/testbed/debug/Makefile"
goto 166
ls -la /testbed/debug/CMakeFiles
cat /testbed/debug/CMakeFiles/ext_avro.dir/build.make
cd /testbed/.externals/build/ext_avro/src/ext_avro && ./build.sh test
apt install -y maven
mvn --version
cd /testbed && ./build.sh bld
ls -la /testbed/debug/CMakeFiles
cat /testbed/debug/CMakeFiles/ext_avro.dir/build.make
cd /testbed/.externals/build/ext_avro/src/ext_avro && ./build.sh test

