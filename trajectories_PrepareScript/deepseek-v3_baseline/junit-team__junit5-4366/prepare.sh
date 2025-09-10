ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "README.md"
java -version
sudo apt update && sudo apt install -y openjdk-21-jdk
apt update && apt install -y openjdk-21-jdk
java -version
./gradlew build
wget https://services.gradle.org/distributions/gradle-8.13-bin.zip -P /tmp
curl -L -o /tmp/gradle-8.13-bin.zip https://services.gradle.org/distributions/gradle-8.13-bin.zip
apt install -y curl
curl -L -o /tmp/gradle-8.13-bin.zip https://services.gradle.org/distributions/gradle-8.13-bin.zip
mkdir -p /opt/gradle && unzip -d /opt/gradle /tmp/gradle-8.13-bin.zip
apt install -y unzip
mkdir -p /opt/gradle && unzip -d /opt/gradle /tmp/gradle-8.13-bin.zip
find_file gradle-wrapper.properties
open "/home/junit5/gradle/wrapper/gradle-wrapper.properties"
cp /tmp/gradle-8.13-bin.zip /opt/gradle/
edit 'distributionUrl=https\://services.gradle.org/distributions/gradle-8.13-bin.zip' 'distributionUrl=file\:///opt/gradle/gradle-8.13-bin.zip'
./gradlew build
cat /home/junit5/platform-tooling-support-tests/build/reports/tests/test/index.html
./gradlew dependencies
open "build.gradle.kts"
./gradlew :platform-tooling-support-tests:test --info
