ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
sudo apt-get update && sudo apt-get install -y graphviz openjdk-17-jdk
apt-get update && apt-get install -y graphviz openjdk-17-jdk
java -version
find_file gradle-wrapper.properties
open "gradle/wrapper/gradle-wrapper.properties"
./gradlew build
wget https://services.gradle.org/distributions/gradle-8.2.1-bin.zip
apt-get install -y wget
wget https://services.gradle.org/distributions/gradle-8.2.1-bin.zip
edit 'distributionUrl=https\://services.gradle.org/distributions/gradle-8.2.1-bin.zip' distributionUrl=file:///testbed/gradle-8.2.1-bin.zip
./gradlew build
./gradlew build --stacktrace
export GRADLE_OPTS="-Xmx2048m" && ./gradlew build

