ls -la
ls -la .github/workflows
open ".github/workflows/backend.yml"
open "pom.xml"
java -version
apt-get update && apt-get install -y zulu17-jdk
apt-get install -y openjdk-17-jdk
java -version
./mvnw -B -V -ntp verify
ls -la kafka-ui-api/target/surefire-reports

