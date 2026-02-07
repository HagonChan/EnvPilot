ls -la
ls -la .github/workflows
open ".github/workflows/pull_request_server.yml"
open "README.md"
apt-get install -y openjdk-11-jdk
apt-get update
apt-get install -y openjdk-11-jdk
java -version
apt-get install -y maven
mvn -version
apt-get install -y nodejs npm
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt install nodejs -y
apt-get remove -y libnode-dev
apt install nodejs -y
apt-get remove -y libnode72
apt-get purge -y nodejs libnode72 libnode-dev
apt install nodejs -y
node --version && npm --version
mvn install
mvn install -pl '!packaging'
mvn test
