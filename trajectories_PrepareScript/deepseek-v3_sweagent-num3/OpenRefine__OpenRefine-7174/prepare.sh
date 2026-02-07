ls -la
ls -la .github/workflows
open ".github/workflows/pull_request_server.yml"
open "pom.xml"
open "README.md"
sudo apt update && sudo apt install -y openjdk-21-jdk
apt update && apt install -y openjdk-21-jdk
apt install -y maven
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs
apt remove -y nodejs
wget -qO- https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs
apt install -y wget
wget -qO- https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs
apt remove -y libnode72
dpkg --force-all -r libnode72 && apt install -y nodejs
java -version && mvn -version && node -v && npm -v
mvn clean install
mvn clean install -pl '!packaging'
mvn test
ls -la */target
