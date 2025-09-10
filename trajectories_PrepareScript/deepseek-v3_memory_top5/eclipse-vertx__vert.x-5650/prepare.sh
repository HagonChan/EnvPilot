ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y openjdk-11-jdk maven
java -version && mvn --version
mvn package
mvn package -U
mvn package -o
rm -rf ~/.m2/repository && mvn package -U
