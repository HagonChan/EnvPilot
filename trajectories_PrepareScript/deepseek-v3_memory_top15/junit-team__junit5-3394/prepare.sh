ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "build.gradle.kts"
open "gradle/wrapper/gradle-wrapper.properties"
apt-get update && apt-get install -y openjdk-17-jdk graphviz curl unzip
java -version
./gradlew --version
wget https://services.gradle.org/distributions/gradle-8.2.1-bin.zip -P /tmp
apt-get install -y wget
wget https://services.gradle.org/distributions/gradle-8.2.1-bin.zip -P /tmp
edit 'distributionUrl=https\://services.gradle.org/distributions/gradle-8.2.1-bin.zip' 'distributionUrl=file\:///tmp/gradle-8.2.1-bin.zip'
./gradlew --version
./gradlew build
apt-get install -y openjdk-8-jdk
./gradlew build
cat platform-tooling-support-tests/build/reports/tests/test/index.html
