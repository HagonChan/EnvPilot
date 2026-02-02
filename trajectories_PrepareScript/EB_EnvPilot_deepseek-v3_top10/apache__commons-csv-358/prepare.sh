ls -la
ls -la .github/workflows
open ".github/workflows/maven.yml"
apt-get update && apt-get install -y openjdk-11-jdk maven
java -version && mvn --version

