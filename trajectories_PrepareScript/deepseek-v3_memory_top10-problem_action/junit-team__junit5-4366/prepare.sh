ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "README.md"
apt-get update && apt-get install -y openjdk-21-jdk
apt-get install -y graphviz
java -version
./gradlew build
