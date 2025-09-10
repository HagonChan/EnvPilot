ls -la
open "gradle/wrapper/gradle-wrapper.properties"
open "build.gradle"
open "gradle.properties"
ls -la .github/workflows
open ".github/workflows/gradle.yml"
java -version
apt-get update && apt-get install -y openjdk-17-jdk
java -version
./gradlew check --no-daemon --continue
./gradlew check --no-daemon --continue
wget https://services.gradle.org/distributions/gradle-8.11.1-bin.zip -P /tmp
apt-get install -y wget
wget https://services.gradle.org/distributions/gradle-8.11.1-bin.zip -P /tmp
edit 'distributionUrl=https\://services.gradle.org/distributions/gradle-8.11.1-bin.zip' 'distributionUrl=file\:///tmp/gradle-8.11.1-bin.zip'
open "gradle/wrapper/gradle-wrapper.properties"
edit 'distributionUrl=https\://services.gradle.org/distributions/gradle-8.11.1-bin.zip' 'distributionUrl=file\:///tmp/gradle-8.11.1-bin.zip' False
./gradlew check --no-daemon --continue
