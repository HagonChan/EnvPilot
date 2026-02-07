ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
sudo apt update && sudo apt install -y libc6 libcurl4 git build-essential protobuf-compiler libprotobuf-dev libcurl4-openssl-dev libncurses5-dev m4 g++ libssl-dev debhelper curl
apt update && apt install -y libc6 libcurl4 git build-essential protobuf-compiler libprotobuf-dev libcurl4-openssl-dev libncurses5-dev m4 g++ libssl-dev debhelper curl
./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
apt install -y python3.12
apt-cache search python3 | grep '^python3'
apt install -y python3.11 python3.11-dev
PYTHON=/usr/bin/python3.11 ./configure --fetch boost --fetch gtest --fetch re2 --fetch jemalloc --fetch quickjs
make support
make DEBUG=1
test/run --verbose --jobs 4 -o test_output -H unit
ln -s /usr/bin/python3.11 /usr/bin/python
test/run --verbose --jobs 4 -o test_output -H unit
open "test_output/test_results.html"
search_file UtilsTest.TimeLocal test_output/test_results.html
