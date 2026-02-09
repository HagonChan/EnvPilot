
ls -la
find_file '*.yml' .github
open ".github/workflows/build.yml"
apt-get update && apt-get install -y libmbedtls-dev
apt-get update && apt-get install -y clang cmake make autoconf automake libtool pkg-config python3 gcc libssl-dev build-essential
./autogen.sh
mkdir -p build && cd build && ../configure
make
ctest
ls -la
cd test && ls -la
./regress
./test-changelist
./test-closed
./test-dumpevents
./test-eof
./test-fdleak
./test-init
./test-ratelim
./test-time
./test-weof
