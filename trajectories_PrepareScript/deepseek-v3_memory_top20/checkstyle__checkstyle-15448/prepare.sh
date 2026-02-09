ls -la
ls -la .github/workflows
open ".github/workflows/pitest.yml"
open "pom.xml"
apt-get update && apt-get install -y openjdk-11-jdk maven groovy
java -version && mvn --version
mvn clean install -DskipTests
ls -la .ci
open ".ci/pitest.sh"
./.ci/pitest.sh --list
./.ci/pitest.sh pitest-main
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && ./.ci/pitest.sh pitest-main
