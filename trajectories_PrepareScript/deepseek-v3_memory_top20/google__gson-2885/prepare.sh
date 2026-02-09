ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y openjdk-17-jdk maven
java -version && mvn --version
mvn --batch-mode --no-transfer-progress verify javadoc:jar
mvn --batch-mode --no-transfer-progress verify javadoc:jar
ls -la gson/target/failsafe-reports
cat gson/target/failsafe-reports/com.google.gson.integration.OSGiManifestIT.txt
mvn clean && mvn --batch-mode --no-transfer-progress verify javadoc:jar
mvn --batch-mode --no-transfer-progress verify javadoc:jar -pl '!test-shrinker'
mvn --batch-mode --no-transfer-progress verify javadoc:jar -pl '!test-shrinker' -Dtest=!OSGiManifestIT
mvn --batch-mode --no-transfer-progress verify javadoc:jar -pl '!test-shrinker' -Dtest='!OSGiManifestIT'
mvn --batch-mode --no-transfer-progress verify javadoc:jar -pl '!test-shrinker' -Dit.test='!OSGiManifestIT'
