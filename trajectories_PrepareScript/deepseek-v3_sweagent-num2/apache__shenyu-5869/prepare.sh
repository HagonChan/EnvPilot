ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "pom.xml"
open "README.md"
java -version
apt-get update && apt-get install -y openjdk-17-jdk
java -version
./mvnw -B clean test -Prelease
apt-get install -y maven
mvn -version
mvn -B clean test -Prelease
