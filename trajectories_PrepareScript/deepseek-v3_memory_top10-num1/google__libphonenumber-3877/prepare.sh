ls -la
ls -la .github/workflows
open ".github/workflows/java-unit-test.yml"
open ".github/workflows/cpp-unit-test.yml"
sudo apt-get update && sudo apt-get install -y cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler
apt-get update && apt-get install -y cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler
apt-get install -y cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler
cmake --version && make --version && protoc --version
apt-get install -y cmake make protobuf-compiler
cmake --version && make --version && protoc --version
apt-get install -y openjdk-17-jdk maven
java -version && mvn --version
ls -la cpp
cd cpp && mkdir -p build && cd build && cmake .. && make
apt-get install -y g++
cmake .. && make
cmake .. && make
apt-get install -y libabsl-dev
cmake .. && make
cd /usr/src/gtest && sudo cmake CMakeLists.txt && sudo make && sudo cp *.a /usr/lib
git clone https://github.com/google/googletest.git && cd googletest && mkdir build && cd build && cmake .. && make && make install
wget https://github.com/google/googletest/archive/refs/heads/main.zip && unzip main.zip && cd googletest-main && mkdir build && cd build && cmake .. && make && make install
apt-get install -y wget
wget https://github.com/google/googletest/archive/refs/heads/main.zip && unzip main.zip && cd googletest-main && mkdir build && cd build && cmake .. && make && make install
apt-get install -y unzip
unzip main.zip && cd googletest-main && mkdir build && cd build && cmake .. && make && make install
cd /testbed/cpp/build && cmake .. && make
apt-get install -y libboost-date-time-dev libboost-system-dev libboost-thread-dev
cmake .. && make
dpkg -L libicu-dev | grep icuuc
apt-get install -y libicu-dev
dpkg -L libicu-dev | grep icuuc
cmake .. && make
ctest
open ".github/workflows/cpp-unit-test.yml"
ls -la .github/workflows
cd /testbed && ls -la .github/workflows
open ".github/workflows/cpp-unit-test.yml"
cd /testbed/cpp/build && ./tools/generate_geocoding_data_test && ./libphonenumber_test
cd /testbed/java && mvn install
mvn test
open ".github/workflows/java-unit-test.yml"
find . -name "pom.xml" -exec grep -l "surefire" {} \;
open "./pom.xml"
cd libphonenumber && mvn test
