ls -la
ls -la .github/workflows
open ".github/workflows/pull_request_server.yml"
open "pom.xml"
apt-get update && apt-get install -y openjdk-11-jdk
java -version && echo $JAVA_HOME
export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java)))) && echo $JAVA_HOME
apt-get install -y maven
mvn -version
mvn test
