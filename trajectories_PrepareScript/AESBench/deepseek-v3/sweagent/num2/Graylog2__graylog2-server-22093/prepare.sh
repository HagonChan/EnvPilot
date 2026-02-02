ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "pom.xml"
open "README.markdown"
java -version
apt-get update && apt-get install -y openjdk-17-jdk
java -version
./mvnw clean install
./mvnw clean install -DskipTests
apt-get install -y yarn
apt-get install -y npm
npm install -g yarn
yarn --version
./mvnw clean install
./mvnw clean install -DskipTests
./mvnw clean install -DskipTests -DskipFrontend
./mvnw clean install -DskipTests -pl '!graylog2-server'
