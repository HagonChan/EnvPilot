ls -la
ls -la .github/workflows
open ".github/workflows/pull_request_server.yml"
java -version
apt-get update && apt-get install -y openjdk-21-jdk
java -version
apt-get install -y maven
mvn -version
open "pom.xml"
search_file postgresql pom.xml
search_file mysql pom.xml
mvn clean install
apt-get install -y curl
mvn clean install
apt-get install -y cdrtools
apt-get install -y xorriso
mvn clean install
ln -s /usr/bin/xorriso /usr/bin/genisoimage
mvn clean install
mvn test
