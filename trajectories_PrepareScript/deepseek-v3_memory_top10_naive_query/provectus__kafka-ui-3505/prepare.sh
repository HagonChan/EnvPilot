ls -la
ls -la .github/workflows
open ".github/workflows/backend.yml"
open "pom.xml"
apt-get update && apt-get install -y openjdk-17-jdk
apt-get install -y maven
java -version && mvn -version
./mvnw -B -V -ntp verify
ls -la /testbed/kafka-ui-api/target/surefire-reports
cat /testbed/kafka-ui-api/target/surefire-reports/com.provectus.kafka.ui.service.ksql.KsqlApiClientTest.txt
apt-get update && apt-get install -y docker.io
systemctl start docker
service docker start
dockerd
sudo dockerd
dockerd --iptables=false
./mvnw -B -V -ntp clean package -Pprod -DskipTests
./mvnw -B -V -ntp clean package -Pprod -DskipTests -Ddocker.skip
