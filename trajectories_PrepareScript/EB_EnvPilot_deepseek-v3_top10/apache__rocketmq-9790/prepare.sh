ls -la
ls -la .github/workflows
open ".github/workflows/maven.yaml"
apt-get update && apt-get install -y openjdk-8-jdk maven
apt-get install -y openjdk-8-jdk maven
java -version && mvn --version

