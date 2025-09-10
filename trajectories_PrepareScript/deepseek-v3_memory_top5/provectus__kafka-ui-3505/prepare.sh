ls -la
ls -la .github/workflows
open ".github/workflows/backend.yml"
open "pom.xml"
apt-get update && apt-get install -y openjdk-17-jdk
java -version
apt-get install -y maven
mvn -version
./mvnw -B -V -ntp verify
ls -la /testbed/kafka-ui-api/target/surefire-reports
./mvnw -B -V -ntp clean package -Pprod -DskipTests
./mvnw -B -V -ntp clean package -Pprod -DskipTests -Ddocker.skip=true
