ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y temurin-11-jdk temurin-17-jdk temurin-21-jdk
apt-get update && apt-get install -y openjdk-11-jdk openjdk-17-jdk openjdk-21-jdk
apt-get install -y openjdk-11-jdk openjdk-17-jdk
apt-get install -y maven
java -version && javac -version && mvn --version
mvn --batch-mode --no-transfer-progress verify javadoc:jar
