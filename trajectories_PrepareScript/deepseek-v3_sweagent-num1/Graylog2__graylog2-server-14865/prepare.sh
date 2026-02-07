ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "pom.xml"
open "README.markdown"
java -version
apt-get update && apt-get install -y openjdk-17-jdk
java -version
apt-get install -y maven
apt-get update && apt-get install -y maven
mvn -version
mvn clean install
docker --version
apt-get install -y docker.io
docker --version
mvn clean install
systemctl start docker && systemctl enable docker
service docker start
dockerd
sudo dockerd
apt-get install -y containerd runc
mvn clean install -DskipTests
mvn clean install -DskipTests -DskipFrontend
mvn clean install -DskipTests -pl '!graylog2-server'
