ls -la
ls -la .github/workflows
open ".github/workflows/backend.yml"
java -version
apt-get update && apt-get install -y openjdk-17-jdk
java -version
ls -la ./mvnw
./mvnw clean package -Pprod

