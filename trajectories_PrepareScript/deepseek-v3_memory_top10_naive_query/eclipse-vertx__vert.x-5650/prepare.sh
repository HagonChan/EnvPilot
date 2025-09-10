ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y openjdk-11-jdk maven
java -version && mvn -version
mvn -s .github/maven-ci-settings.xml -q clean verify -B
