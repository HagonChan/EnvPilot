ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "gradle/wrapper/gradle-wrapper.properties"
java -version
apt-get update && apt-get install -y openjdk-21-jdk
java -version
apt-get install -y graphviz
./gradlew build
wget https://services.gradle.org/distributions/gradle-8.13-bin.zip -P /tmp
apt-get install -y wget
wget https://services.gradle.org/distributions/gradle-8.13-bin.zip -P /tmp
edit 'distributionUrl=https\://services.gradle.org/distributions/gradle-8.13-bin.zip' 'distributionUrl=file\:///tmp/gradle-8.13-bin.zip' True
./gradlew build
