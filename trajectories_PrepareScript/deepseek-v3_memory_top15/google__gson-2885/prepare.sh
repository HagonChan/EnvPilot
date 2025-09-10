ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y openjdk-17-jdk
apt-get install -y maven
mvn --batch-mode --no-transfer-progress verify javadoc:jar
mvn --batch-mode --no-transfer-progress verify javadoc:jar
ls -la /testbed/gson/target/failsafe-reports
open "/testbed/gson/target/failsafe-reports/com.google.gson.integration.OSGiManifestIT.txt"
mvn clean
mvn --batch-mode --no-transfer-progress verify javadoc:jar
mvn --batch-mode --no-transfer-progress verify javadoc:jar
ls -la /testbed/gson/target/failsafe-reports
mvn --batch-mode --no-transfer-progress verify javadoc:jar -DskipTests
mvn --batch-mode --no-transfer-progress verify javadoc:jar -DskipTests -pl !test-shrinker
mvn --batch-mode --no-transfer-progress verify javadoc:jar -DskipTests -pl \!test-shrinker
