ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y openjdk-17-jdk maven
java -version && mvn --version
mvn --batch-mode --no-transfer-progress verify javadoc:jar
mvn --batch-mode --no-transfer-progress verify -DskipTests
mvn --batch-mode --no-transfer-progress verify -DskipTests -pl !test-shrinker
mvn --batch-mode --no-transfer-progress verify -DskipTests -pl \!test-shrinker
mvn --batch-mode --no-transfer-progress test -pl \!test-shrinker
mvn --batch-mode --no-transfer-progress test -pl \!test-shrinker,\!test-jpms
