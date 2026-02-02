ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
sudo apt update && sudo apt install -y tzdata libc6 libcurl4 git build-essential protobuf-compiler libprotobuf-dev libcurl4-openssl-dev libncurses5-dev m4 g++ libssl-dev debhelper curl
apt update && apt install -y tzdata libc6 libcurl4 git build-essential protobuf-compiler libprotobuf-dev libcurl4-openssl-dev libncurses5-dev m4 g++ libssl-dev debhelper curl
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
apt install -y python3.12
apt-cache search python3 | grep '^python3\.'
apt install -y python3.11 python3.11-dev
PYTHON=/usr/bin/python3.11 ./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
make
mkdir -p test_output && test/run --verbose --jobs 4 -o test_output -H unit
mkdir -p test_output && python3.11 test/run --verbose --jobs 4 -o test_output -H unit
ls -la build/release/
./configure --help
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs CXXFLAGS="-DTEST_BUILD" LDFLAGS="-DTEST_BUILD" && make
PYTHON=/usr/bin/python3.11 ./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs CXXFLAGS="-DTEST_BUILD" LDFLAGS="-DTEST_BUILD" && make
ls -la build/release/
open "Makefile"
open "mk/main.mk"
open "test/build.mk"
make test-deps
find_file '*build.mk' .
open "src/build.mk"
open "mk/support/build.mk"
edit 'test-deps: $(BUILD_DIR)/rethinkdb $(BUILD_DIR)/rethinkdb-unittest web-assets rb-driver py-driver' 'test-deps: $(BUILD_DIR)/rethinkdb $(BUILD_DIR)/rethinkdb-unittest rb-driver py-driver' True
open "Makefile"
open "mk/configure.mk"
open "mk/defaults.mk"
PYTHON=/usr/bin/python3.11 ./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs --enable-debug
DEBUG=1 PYTHON=/usr/bin/python3.11 ./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
make
ls -la build/release/
mkdir -p test_output && python3.11 test/run --verbose --jobs 4 -o test_output -H unit
rm -rf test_output && mkdir -p test_output && python3.11 test/run --verbose --jobs 4 -o test_output -H unit
rm -rf test_output && mkdir -p test_output && python3.11 test/run --verbose --jobs 4 -o test_output -H unit
mkdir -p test_results && python3.11 test/run --verbose --jobs 4 -o test_results -H unit
python3.11 test/run --verbose --jobs 4 -H unit
