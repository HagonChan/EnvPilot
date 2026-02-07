ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
java -version
apt-get update && apt-get install -y openjdk-17-jdk graphviz
java -version
./gradlew build
open "gradle/wrapper/gradle-wrapper.properties"
curl -L -o gradle-8.2.1-bin.zip https://services.gradle.org/distributions/gradle-8.2.1-bin.zip
apt-get install -y curl
curl -L -o gradle-8.2.1-bin.zip https://services.gradle.org/distributions/gradle-8.2.1-bin.zip
edit networkTimeout=10000 networkTimeout=60000 True
./gradlew build
