ls -la
ls -la .github/workflows
open ".github/workflows/pull_request_server.yml"
java -version
apt-get update && apt-get install -y openjdk-21-jdk
java -version
apt-get install -y maven
mvn -version
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y nodejs libnode72 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node -v
mvn clean install
mvn clean install -DskipTests
mvn clean install -DskipTests -pl !packaging
mvn clean install -DskipTests -pl \!packaging
mvn test
