ls -la
ls -la .github/workflows
open ".github/workflows/gradle.yml"
open "gradle/wrapper/gradle-wrapper.properties"
java -version
apt-get update && apt-get install -y openjdk-17-jdk
java -version
./gradlew check --no-daemon --continue
./gradlew check --no-daemon --continue
mkdir -p /tmp/gradle-dist
wget -P /tmp/gradle-dist https://services.gradle.org/distributions/gradle-8.11.1-bin.zip
apt-get update && apt-get install -y wget
wget -P /tmp/gradle-dist https://services.gradle.org/distributions/gradle-8.11.1-bin.zip
edit 'distributionUrl=https\://services.gradle.org/distributions/gradle-8.11.1-bin.zip' 'distributionUrl=file\:///tmp/gradle-dist/gradle-8.11.1-bin.zip'
./gradlew check --no-daemon --continue
cat /testbed/http-client-jdk/build/reports/tests/test/index.html
