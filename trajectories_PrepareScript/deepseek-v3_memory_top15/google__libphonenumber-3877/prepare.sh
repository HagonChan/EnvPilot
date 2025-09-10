ls -la
ls -la .github/workflows
open ".github/workflows/java-unit-test.yml"
open ".github/workflows/cpp-unit-test.yml"
sudo apt-get update && sudo apt-get install -y cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler
apt-get update && apt-get install -y cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler
apt-get install -y openjdk-8-jdk maven ant
java -version && mvn --version && ant -version
update-alternatives --config java
update-java-alternatives --set java-1.8.0-openjdk-amd64
java -version
find . -name pom.xml -type f
mvn install
mvn test
find . -name CMakeLists.txt -type f
cd cpp && mkdir -p build && cd build && cmake .. && make
apt-get install -y g++
cmake .. && make
./tools/generate_geocoding_data_test
./libphonenumber_test
