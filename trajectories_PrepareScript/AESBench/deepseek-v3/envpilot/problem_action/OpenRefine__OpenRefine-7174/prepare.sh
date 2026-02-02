ls -la
ls -la .github/workflows
open ".github/workflows/pull_request_server.yml"
apt-get update && apt-get install -y openjdk-11-jdk maven nodejs npm
java -version && mvn -version && node --version && npm --version
mvn install
apt-get install -y curl
mvn install
apt-get install -y genisoimage
mvn install
mvn test
