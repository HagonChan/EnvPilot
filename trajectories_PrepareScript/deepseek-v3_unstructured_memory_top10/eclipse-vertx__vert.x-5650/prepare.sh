ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "pom.xml"
ls -la mvnw*
apt-get update && apt-get install -y openjdk-8-jdk
apt-get install -y maven
java -version && mvn -version
mvn -s .github/maven-ci-settings.xml -q clean verify -B
apt-get install -y openjdk-11-jdk
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && java -version
mvn -s .github/maven-ci-settings.xml -q clean verify -B
