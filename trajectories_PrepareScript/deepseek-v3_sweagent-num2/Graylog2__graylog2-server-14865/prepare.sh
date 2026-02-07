ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "pom.xml"
open "README.markdown"
open "CONTRIBUTING.md"
sudo apt update && sudo apt install -y openjdk-17-jdk maven
apt update && apt install -y openjdk-17-jdk maven
java -version && mvn -version
mvn clean install
ls -la graylog2-server/target/surefire-reports
apt install -y docker.io
systemctl start docker && systemctl status docker
service docker start
dockerd &
docker ps
dockerd --iptables=false &
docker ps
mvn clean install -DskipTests
apt install -y yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt update && apt install -y yarn
apt install -y curl gnupg
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt update && apt install -y yarn
yarn --version && node --version
mvn clean install
mvn clean install -DskipTests
mvn clean install -DskipTests -Dskip.yarn
ls -la graylog2-server/target
mvn test -Dtest=!*Docker*
mvn test -Dtest=!*Docker*Test
mvn test

