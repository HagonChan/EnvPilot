ls -la
ls -la .github/workflows
open ".github/workflows/backend.yml"
open "pom.xml"
open "README.md"
java -version
apt-get update && apt-get install -y openjdk-17-jdk
java -version
./mvnw -B -V -ntp verify
ls -la /home/kafka-ui/kafka-ui-api/target/surefire-reports
./mvnw dependency:tree
./mvnw -pl kafka-ui-contract clean install
./mvnw -pl kafka-ui-serde-api clean install
./mvnw -pl kafka-ui-api clean install
./mvnw -N clean install
./mvnw -pl kafka-ui-api clean install
ls -la /home/kafka-ui/kafka-ui-api/target/surefire-reports
open "pom.xml"
ls -la /home/kafka-ui/kafka-ui-api/src/test/java/com/provectus/kafka/ui
./mvnw -pl kafka-ui-api clean test -DskipITs=true
open "/home/kafka-ui/kafka-ui-api/src/test/java/com/provectus/kafka/ui/AbstractIntegrationTest.java"
docker --version
apt-get update && apt-get install -y docker.io
systemctl start docker && docker --version
dockerd &
docker ps
sudo dockerd &
dockerd &
./mvnw -pl kafka-ui-api clean install -DskipTests
./mvnw -pl kafka-ui-e2e-checks clean install -DskipTests
ls -la ~/.m2/repository/com/provectus/
