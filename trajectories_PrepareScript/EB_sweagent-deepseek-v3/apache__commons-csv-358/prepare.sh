ls -la
ls -la .github/workflows
open ".github/workflows/maven.yml"
open "pom.xml"
open "README.md"
java -version
apt-get update && apt-get install -y openjdk-11-jdk
java -version
apt-get install -y maven
mvn --version
mvn -Ddoclint=all --file pom.xml --no-transfer-progress test
