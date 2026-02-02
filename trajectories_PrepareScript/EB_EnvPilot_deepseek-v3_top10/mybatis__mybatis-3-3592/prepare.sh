ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
apt-get update && apt-get install -y openjdk-21-jdk maven
java -version && mvn --version

