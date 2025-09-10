ls -la
ls -la .github/workflows
open ".github/workflows/backend.yml"
open "pom.xml"
apt-get update && apt-get install -y openjdk-17-jdk maven
java -version && mvn -version
./mvnw -B -V -ntp verify
ls -la kafka-ui-api/target/surefire-reports
rm -rf ~/.m2/repository/com/provectus && ./mvnw -B -V -ntp clean install
open "kafka-ui-api/pom.xml"
grep -A 5 "<confluent.version>" kafka-ui-api/pom.xml
grep -A 5 "<confluent.version>" pom.xml
grep -A 10 "<repositories>" pom.xml
rm -rf ~/.m2/repository/com/provectus ~/.m2/repository/io/confluent && ./mvnw -B -V -ntp clean install
cat kafka-ui-api/target/surefire-reports/*.txt
apt-get install -y docker.io && systemctl start docker
dockerd &
docker --version
./mvnw -B -V -ntp verify -DskipITs
./mvnw -B -V -ntp clean package -Pprod -DskipTests
./mvnw -B -V -ntp clean package -Pprod -DskipTests -Ddocker.skip
