ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "build.gradle.kts"
apt-get update && apt-get install -y wget
wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-21.0.0/graalvm-ce-java21-linux-amd64-21.0.0.tar.gz
apt-get install -y openjdk-21-jdk
java -version
apt-get install -y graphviz
dot -V
ls -la
./gradlew build
./gradlew build --stacktrace
