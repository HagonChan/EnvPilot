ls -la
ls -la .github/workflows
open ".github/workflows/cpp-unit-test.yml"
sudo apt-get install cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler -y
apt-get install cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler -y
cd cpp && mkdir -p build && cd build && cmake .. && make
apt-get install g++ -y
cd /testbed/cpp/build && cmake .. && make
apt-get install default-jre -y
cd /testbed/cpp/build && cmake .. && make
./generate_geocoding_data_test
ls -la tools
cd tools && ./generate_geocoding_data_test
find /testbed/cpp/build -name "libphonenumber_test"
cd /testbed/cpp/build && ./libphonenumber_test
