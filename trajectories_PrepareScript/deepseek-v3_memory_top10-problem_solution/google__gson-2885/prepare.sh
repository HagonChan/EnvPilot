ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y wget apt-transport-https gnupg
wget -O - https://packages.adoptium.net/artifactory/api/gpg/key/public | apt-key add - && echo "deb https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list && apt-get update && apt-get install -y temurin-11-jdk temurin-17-jdk temurin-21-jdk
apt-get install -y maven
java -version && mvn --version
mvn --batch-mode --no-transfer-progress verify javadoc:jar
mvn --batch-mode --no-transfer-progress verify javadoc:jar
ls -la /testbed/gson/target/failsafe-reports
cat /testbed/gson/target/failsafe-reports/com.google.gson.integration.OSGiManifestIT.txt
mvn --batch-mode --no-transfer-progress verify javadoc:jar -DskipITs
mvn --batch-mode --no-transfer-progress verify javadoc:jar -DskipITs -pl '!test-shrinker'
ls -la /testbed/gson/target
