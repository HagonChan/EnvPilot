ls -la
ls -la .github/workflows
open ".github/workflows/java-unit-test.yml"
apt-get update && apt-get install -y openjdk-8-jdk maven
mvn install -P github-actions -DskipTests=true -Dmaven.javadoc.skip=true -B -V
mvn -P github-actions test
ls -la java/build.xml
ant clean -f java/build.xml
apt-get update && apt-get install -y ant
ant clean -f java/build.xml
ant jar -f java/build.xml
mkdir -p java/lib
ant jar -f java/build.xml
apt-get update && apt-get install -y wget
ant jar -f java/build.xml
ant junit -f java/build.xml
open ".github/workflows/cpp-unit-test.yml"
apt-get update && apt-get install -y cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler
apt-get update --allow-insecure-repositories && apt-get install -y cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler
apt-get update --allow-insecure-repositories && apt-get install -y --allow-unauthenticated cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler
sed -i 's/^deb.*security.ubuntu.com/#&/' /etc/apt/sources.list && apt-get update && apt-get install -y cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler
cd cpp && mkdir -p build && cd build
cmake ..
apt-get update && apt-get install -y g++ build-essential
cmake ..
make
cd ../../tools/java/cpp-build && mvn clean package
cd ../../../cpp/build && make
./tools/generate_geocoding_data_test
./src/libphonenumber_test
open ".github/workflows/cpp-unit-test.yml"
ls -la .github/workflows/
cd /testbed && ls -la
cd .github/workflows && ls -la
open ".github/workflows/cpp-unit-test.yml"
open "/testbed/.github/workflows/cpp-unit-test.yml"
cd /testbed && ./cpp/build/tools/generate_geocoding_data_test
./cpp/build/libphonenumber_test
