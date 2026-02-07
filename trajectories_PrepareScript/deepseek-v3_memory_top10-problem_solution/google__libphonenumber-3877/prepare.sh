ls -la
ls -la .github/workflows
open ".github/workflows/java-unit-test.yml"
open ".github/workflows/cpp-unit-test.yml"
sudo apt-get update && sudo apt-get install -y cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler
apt-get update && apt-get install -y cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler
apt-get install -y openjdk-8-jdk maven
cd java && mvn install -P github-actions -DskipTests=true -Dmaven.javadoc.skip=true -B -V && mvn -P github-actions test
cd ../cpp && mkdir -p build && cd build && cmake .. && make
apt-get install -y g++
cmake .. && make
./tools/generate_geocoding_data_test && ./tools/libphonenumber_test
find . -name "libphonenumber_test"
./libphonenumber_test
