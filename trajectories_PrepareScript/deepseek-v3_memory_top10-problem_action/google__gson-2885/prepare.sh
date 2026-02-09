ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y openjdk-17-jdk maven
java -version && mvn --version
mvn --batch-mode --no-transfer-progress verify javadoc:jar
mvn clean test
find_file pom.xml test-jpms
open "test-jpms/pom.xml"

