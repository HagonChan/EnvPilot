ls -la
open "gradle/wrapper/gradle-wrapper.properties"
open "build.gradle"
open "gradle.properties"
ls -la .github/workflows
open ".github/workflows/gradle.yml"
apt-get update && apt-get install -y java-common ca-certificates wget curl
apt-get install -y openjdk-17-jdk
java -version
./gradlew check
wget https://services.gradle.org/distributions/gradle-8.11.1-bin.zip -P /tmp
open "gradle/wrapper/gradle-wrapper.properties"
edit 'distributionUrl=https\://services.gradle.org/distributions/gradle-8.11.1-bin.zip' 'distributionUrl=file\:///tmp/gradle-8.11.1-bin.zip'
./gradlew check
