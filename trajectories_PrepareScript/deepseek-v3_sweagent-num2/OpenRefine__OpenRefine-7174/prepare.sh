ls -la
ls -la .github/workflows
open ".github/workflows/pull_request_server.yml"
open "pom.xml"
java -version
sudo apt update && sudo apt install -y wget apt-transport-https && wget -O - https://packages.adoptium.net/artifactory/api/gpg/key/public | sudo apt-key add - && echo "deb https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | sudo tee /etc/apt/sources.list.d/adoptium.list && sudo apt update && sudo apt install -y temurin-21-jdk
apt update && apt install -y wget apt-transport-https && wget -O - https://packages.adoptium.net/artifactory/api/gpg/key/public | apt-key add - && echo "deb https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list && apt update && apt install -y temurin-21-jdk
apt install -y gnupg
wget -O - https://packages.adoptium.net/artifactory/api/gpg/key/public | apt-key add - && echo "deb https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list && apt update && apt install -y temurin-21-jdk
java -version
mvn -version
apt install -y maven
mvn -version
apt install -y postgresql
service postgresql start
apt install -y mysql-server
service mysql start
mvn -T 4 -B compile test-compile formatter:validate impsort:check javadoc:javadoc -Ddoclint=html,syntax,accessibility,reference

