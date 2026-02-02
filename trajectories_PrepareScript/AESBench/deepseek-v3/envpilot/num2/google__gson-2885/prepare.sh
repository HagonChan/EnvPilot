ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "pom.xml"
apt-get update && apt-get install -y openjdk-17-jdk
apt-get install -y maven
java -version && mvn --version
mvn clean verify
mvn clean verify -pl '!test-shrinker'
