ls -la
open "README.md"
find_file '*.yml' .github
open ".github/workflows/java-unit-test.yml"
open ".github/workflows/cpp-unit-test.yml"
sudo apt-get update && sudo apt-get install -y cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler
apt-get update && apt-get install -y cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler
apt-get install -y openjdk-8-jdk maven
java -version && mvn --version
update-alternatives --config java
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && export PATH=$JAVA_HOME/bin:$PATH && java -version
mvn install
cd cpp && cmake . && make
apt-get install -y g++
cmake . && make
cd .. && mvn test
cd cpp && make test

cd cpp && ctest
pwd
ctest
cmake -DBUILD_TESTING=ON . && make
find . -name "*test*" -type f -executable
./libphonenumber_test
./geocoding_test_program
