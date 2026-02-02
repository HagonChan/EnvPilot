ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
apt-get update && apt-get install -y openjdk-21-jdk graphviz ca-certificates curl unzip
./gradlew :platform-tooling-support-tests:test build jacocoRootReport --no-configuration-cache
wget https://services.gradle.org/distributions/gradle-8.13-bin.zip -P gradle/wrapper/
apt-get install -y wget
wget https://services.gradle.org/distributions/gradle-8.13-bin.zip -P gradle/wrapper/
open "gradle/wrapper/gradle-wrapper.properties"
edit 'distributionUrl=https\://services.gradle.org/distributions/gradle-8.13-bin.zip' 'distributionUrl=file\:///testbed/gradle/wrapper/gradle-8.13-bin.zip' False
./gradlew :platform-tooling-support-tests:test build jacocoRootReport --no-configuration-cache
./gradlew :platform-tooling-support-tests:test build jacocoRootReport --no-configuration-cache --stacktrace
export ORG_GRADLE_PROJECT_org.gradle.jvmargs="-Xmx2048m" && ./gradlew :platform-tooling-support-tests:test build jacocoRootReport --no-configuration-cache
./gradlew :platform-tooling-support-tests:test build jacocoRootReport --no-configuration-cache -Dorg.gradle.jvmargs=-Xmx2048m
./gradlew :platform-tooling-support-tests:test build jacocoRootReport --no-configuration-cache -x checkstyleNohttp
