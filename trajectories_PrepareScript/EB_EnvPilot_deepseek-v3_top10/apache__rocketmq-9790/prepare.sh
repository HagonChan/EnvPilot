ls -la
ls -la .github/workflows
open ".github/workflows/maven.yaml"
open "README.md"
apt-get update && apt-get install -y openjdk-8-jdk
apt-get install -y maven
java -version && mvn --version
mvn clean install
