ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
mvn --version
apt-get update && apt-get install -y maven
mvn --version
mvn --batch-mode --no-transfer-progress verify javadoc:jar
ls -la /usr/lib/jvm/java-11-openjdk-amd64/jmods/
apt-get install --reinstall openjdk-11-jdk
apt-get install -y openjdk-11-jdk-headless
ls -la /usr/lib/jvm/java-11-openjdk-amd64/jmods/
mvn --batch-mode --no-transfer-progress verify javadoc:jar
ls -la /testbed/gson/target/failsafe-reports
cat /testbed/gson/target/failsafe-reports/com.google.gson.integration.OSGiManifestIT.txt
mvn clean verify javadoc:jar
mvn clean verify javadoc:jar -U
mvn clean verify javadoc:jar -pl !test-shrinker
mvn clean verify javadoc:jar -pl \!test-shrinker
