ls -la
ls -la .github/workflows
open ".github/workflows/pull_request_server.yml"
apt-get update && apt-get install -y openjdk-21-jdk maven nodejs npm
java -version && mvn -version && node --version && npm --version
mvn -T 4 -B compile test-compile
mvn test
