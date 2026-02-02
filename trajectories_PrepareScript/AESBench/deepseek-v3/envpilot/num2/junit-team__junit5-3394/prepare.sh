ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
apt-get update && apt-get install -y graphviz openjdk-17-jdk
open "gradle/wrapper/gradle-wrapper.properties"
./gradlew build
apt-get install -y openjdk-8-jdk
./gradlew build
