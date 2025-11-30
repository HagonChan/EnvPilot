
find_file '*.yml'
open "/testbed/.github/workflows/build.yml"
find_file pom.xml
open "/testbed/pom.xml"
mvn -v
apt-get update && apt-get install -y maven
mvn clean install
update-alternatives --config java
apt-get install -y openjdk-11-jdk
mvn clean install
ping -c 4 maven.google.com
curl -I https://maven.google.com
mvn clean install -DskipTests
find_file '*Test*'
mvn -f test-jpms/pom.xml test
mvn -f test-graal-native-image/pom.xml test
