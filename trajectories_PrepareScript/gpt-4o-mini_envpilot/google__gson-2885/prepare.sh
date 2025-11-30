ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y openjdk-17-jdk maven
mvn --batch-mode --no-transfer-progress verify javadoc:jar

