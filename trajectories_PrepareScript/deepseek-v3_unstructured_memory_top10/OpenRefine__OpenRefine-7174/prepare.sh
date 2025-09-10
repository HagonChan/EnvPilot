ls -la
ls -la .github/workflows
open ".github/workflows/pull_request_server.yml"
open "pom.xml"
open "README.md"
apt-get update && apt-get install -y openjdk-17-jdk
apt-get install -y maven
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs libnode72 && apt-get install -y nodejs
mvn clean install
mvn clean install -DskipTests -pl '!packaging'
mvn test
java -version && mvn --version && node --version
