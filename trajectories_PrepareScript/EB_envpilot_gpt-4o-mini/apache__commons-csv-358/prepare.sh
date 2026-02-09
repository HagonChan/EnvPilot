

ls -R
open "README.md"
open "pom.xml"
apt-get update && apt-get install -y openjdk-11-jdk maven
mvn clean install -DskipTests
mvn test
