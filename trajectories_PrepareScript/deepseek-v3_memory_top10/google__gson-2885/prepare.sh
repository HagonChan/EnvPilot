ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y openjdk-17-jdk
apt-get install -y maven
java -version && mvn --version
mvn --batch-mode --no-transfer-progress verify javadoc:jar
mvn --batch-mode --no-transfer-progress verify javadoc:jar -DskipTests
mvn --batch-mode --no-transfer-progress verify javadoc:jar -pl '!test-shrinker'
ls -la /testbed/gson/target/failsafe-reports
cat /testbed/gson/target/failsafe-reports/com.google.gson.integration.OSGiManifestIT.txt
mvn --batch-mode --no-transfer-progress verify javadoc:jar -DskipITs
mvn --batch-mode --no-transfer-progress verify javadoc:jar -DskipITs -pl '!test-shrinker'
