ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y libc6 libcurl4 git build-essential protobuf-compiler libprotobuf-dev libcurl4-openssl-dev libncurses5-dev m4 g++ libssl-dev debhelper curl
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
apt-get install -y python3.12 python3.12-venv
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.12 python3.12-venv
apt-get install -y software-properties-common && add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.12 python3.12-venv
python3.12 --version
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
ln -s /usr/bin/python3.12 /usr/bin/python
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
make support && make DEBUG=1
test/run --verbose unit
