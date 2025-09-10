ls -la
ls -la .github/workflows
open ".github/workflows/pull_request_server.yml"
open "pom.xml"
open "README.md"
java -version && mvn -version && node --version
sudo apt update && sudo apt install -y openjdk-21-jdk
apt update && apt install -y openjdk-21-jdk
java -version
apt install -y maven
mvn -version
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs
apt install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs
apt remove -y nodejs libnode72 && apt autoremove -y
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs
node --version
mvn clean install
mvn clean install -pl '!packaging' -DskipTests=false
ls -la target/surefire-reports
ls -la core/target/surefire-reports
