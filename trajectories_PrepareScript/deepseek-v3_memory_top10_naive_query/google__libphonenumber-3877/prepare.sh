ls -la
ls -la .github/workflows
open ".github/workflows/java-unit-test.yml"
open ".github/workflows/cpp-unit-test.yml"
sudo apt-get install -y cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler
apt-get install -y cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler
apt-get update && apt-get install -y --fix-missing cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler
apt-get install -y cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler
apt-get install -y openjdk-8-jdk maven
java -version && mvn --version && cmake --version
update-alternatives --config java
update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java
java -version
ls -la CMakeLists.txt
find . -name CMakeLists.txt
cd cpp && mkdir -p build && cd build && cmake .. && make
apt-get install -y g++
cmake .. && make
ctest
open ".github/workflows/cpp-unit-test.yml"
ls -la .github/workflows/
cd /testbed && ls -la
cd .github/workflows && ls -la
open ".github/workflows/cpp-unit-test.yml"
pwd
cat cpp-unit-test.yml
cd /testbed/cpp/build && ./tools/generate_geocoding_data_test && ./libphonenumber_test
cd /testbed && mvn install -P github-actions && mvn test -P github-actions
