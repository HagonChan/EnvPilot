ls -la
ls -la .github/workflows
open ".github/workflows/java-unit-test.yml"
open ".github/workflows/cpp-unit-test.yml"
apt-get update && apt-get install -y cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler maven
apt-get install -y openjdk-8-jdk
java -version && mvn --version
update-alternatives --config java
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && export PATH=$JAVA_HOME/bin:$PATH && mvn --version
cd java && mvn clean install
cd ../cpp && mkdir -p build && cd build && cmake .. && make
apt-get install -y g++
cmake .. && make
apt-get install -y libabsl-dev
cmake .. && make
ctest
open ".github/workflows/cpp-unit-test.yml"
ls -la
./libphonenumber_test
