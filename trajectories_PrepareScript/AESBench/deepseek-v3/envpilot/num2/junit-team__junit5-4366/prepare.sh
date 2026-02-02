ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "gradle.properties"
open "build.gradle.kts"
java -version
apt-get update && apt-get install -y openjdk-21-jdk
java -version
./gradlew build
apt-get install -y openjdk-8-jdk
./gradlew build
