ls -la
ls -la .github/workflows
open ".github/workflows/gradle.yml"
cat setup.sh
java -version
apt-get update && apt-get install -y openjdk-17-jdk
java -version
gradle --version
./gradlew check
wget https://services.gradle.org/distributions/gradle-8.11.1-bin.zip -P /tmp
apt-get install -y wget
wget https://services.gradle.org/distributions/gradle-8.11.1-bin.zip -P /tmp
unzip /tmp/gradle-8.11.1-bin.zip -d /tmp/gradle
apt-get install -y unzip
unzip /tmp/gradle-8.11.1-bin.zip -d /tmp/gradle
ls -la gradle/wrapper
open "gradle/wrapper/gradle-wrapper.properties"
edit 'distributionUrl=https\://services.gradle.org/distributions/gradle-8.11.1-bin.zip' 'distributionUrl=file\:///tmp/gradle/gradle-8.11.1-bin.zip' False
./gradlew check
edit 'distributionUrl=file\:///tmp/gradle/gradle-8.11.1-bin.zip' 'distributionUrl=file\:///tmp/gradle/gradle-8.11.1' False
./gradlew check
edit 'distributionUrl=file\:///tmp/gradle/gradle-8.11.1' 'distributionUrl=https\://services.gradle.org/distributions/gradle-8.11.1-bin.zip' False
wget https://services.gradle.org/distributions/gradle-8.11.1-bin.zip -P /tmp
mkdir -p /root/.gradle/wrapper/dists/gradle-8.11.1/b0iyl53nc9kha63zo9bnvrrmg
unzip /tmp/gradle-8.11.1-bin.zip -d /root/.gradle/wrapper/dists/gradle-8.11.1/b0iyl53nc9kha63zo9bnvrrmg
./gradlew check
export GRADLE_HOME=/root/.gradle/wrapper/dists/gradle-8.11.1/b0iyl53nc9kha63zo9bnvrrmg/gradle-8.11.1
export PATH=$GRADLE_HOME/bin:$PATH
gradle --version
gradle check
open "http-client-jdk/build/reports/tests/test/index.html"
curl --http2 -I https://example.com
apt-get install -y curl
curl --http2 -I https://example.com
