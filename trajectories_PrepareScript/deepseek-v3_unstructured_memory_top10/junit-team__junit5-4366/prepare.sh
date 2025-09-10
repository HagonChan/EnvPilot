ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "build.gradle.kts"
open "gradle.properties"
apt-get update && apt-get install -y graphviz openjdk-21-jdk
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64 && java -version
./gradlew :platform-tooling-support-tests:test build jacocoRootReport --no-configuration-cache
wget -P ~/.gradle/wrapper/dists/gradle-8.13-bin https://services.gradle.org/distributions/gradle-8.13-bin.zip
apt-get install -y wget
wget -P ~/.gradle/wrapper/dists/gradle-8.13-bin https://services.gradle.org/distributions/gradle-8.13-bin.zip
./gradlew :platform-tooling-support-tests:test build jacocoRootReport --no-configuration-cache
