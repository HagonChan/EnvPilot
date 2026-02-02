ls -la
ls -la .github/workflows
open ".github/workflows/cpp-unit-test.yml"
sudo apt-get install cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler -y
apt-get install cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler -y
cd cpp && mkdir -p build && cd build && cmake .. && make
apt-get install g++ -y
cmake .. && make
apt-get install default-jre -y
cmake .. && make
./tools/generate_geocoding_data_test
./tools/libphonenumber_test
ls -la
./libphonenumber_test
