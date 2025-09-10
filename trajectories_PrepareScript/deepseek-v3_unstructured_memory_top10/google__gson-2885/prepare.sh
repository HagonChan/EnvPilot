ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y openjdk-17-jdk
java -version
apt-get install -y maven
mvn --version
mvn --batch-mode --no-transfer-progress verify javadoc:jar
mvn --batch-mode --no-transfer-progress verify javadoc:jar
ls -la /testbed/gson/target/failsafe-reports
cat /testbed/gson/target/failsafe-reports/com.google.gson.integration.OSGiManifestIT.txt
mvn clean
mvn --batch-mode --no-transfer-progress verify javadoc:jar
mvn --batch-mode --no-transfer-progress verify javadoc:jar
ls -la /testbed/gson/target/failsafe-reports
cat /testbed/gson/target/failsafe-reports/com.google.gson.integration.OSGiManifestIT.txt
mvn clean
mvn --batch-mode --no-transfer-progress verify javadoc:jar
mvn --batch-mode --no-transfer-progress verify javadoc:jar -pl '!test-shrinker'
ls -la /testbed/gson/target/failsafe-reports
cat /testbed/gson/target/failsafe-reports/com.google.gson.integration.OSGiManifestIT.txt
mvn clean
mvn --batch-mode --no-transfer-progress verify javadoc:jar
mvn --batch-mode --no-transfer-progress verify javadoc:jar -pl '!test-shrinker'
ls -la /testbed/gson/target/failsafe-reports
cat /testbed/gson/target/failsafe-reports/com.google.gson.integration.OSGiManifestIT.txt
mvn clean
mvn --batch-mode --no-transfer-progress verify javadoc:jar
mvn --batch-mode --no-transfer-progress verify -Dmaven.javadoc.skip=true
ls -la /testbed/gson/target/failsafe-reports
cat /testbed/gson/target/failsafe-reports/com.google.gson.integration.OSGiManifestIT.txt
mvn clean
mvn --batch-mode --no-transfer-progress verify -Dmaven.javadoc.skip=true
mvn --batch-mode --no-transfer-progress verify -Dmaven.javadoc.skip=true -pl '!test-shrinker'
ls -la /testbed/gson/target/failsafe-reports
cat /testbed/gson/target/failsafe-reports/com.google.gson.integration.OSGiManifestIT.txt
mvn clean
mvn --batch-mode --no-transfer-progress verify -Dmaven.javadoc.skip=true
mvn --batch-mode --no-transfer-progress verify -Dmaven.javadoc.skip=true -pl '!test-shrinker'
ls -la /testbed/gson/target/failsafe-reports
cat /testbed/gson/target/failsafe-reports/com.google.gson.integration.OSGiManifestIT.txt
mvn clean
mvn --batch-mode --no-transfer-progress verify -Dmaven.javadoc.skip=true
mvn --batch-mode --no-transfer-progress verify -Dmaven.javadoc.skip=true -pl '!test-shrinker'
ls -la /testbed/gson/target/failsafe-reports
cat /testbed/gson/target/failsafe-reports/com.google.gson.integration.OSGiManifestIT.txt
mvn clean
mvn --batch-mode --no-transfer-progress verify -Dmaven.javadoc.skip=true
mvn --batch-mode --no-transfer-progress verify -Dmaven.javadoc.skip=true -pl '!test-shrinker'

