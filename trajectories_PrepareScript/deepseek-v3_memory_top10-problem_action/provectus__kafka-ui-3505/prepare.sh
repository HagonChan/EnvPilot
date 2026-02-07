ls -la
ls -la .github/workflows
open ".github/workflows/backend.yml"
apt-get update && apt-get install -y openjdk-17-jdk maven
java -version && mvn -version
./mvnw -B -V -ntp verify
ls -la kafka-ui-api/target/surefire-reports
./mvnw -B -V -ntp verify -e
./mvnw clean install -DskipTests
./mvnw -B -V -ntp verify
open "pom.xml"

