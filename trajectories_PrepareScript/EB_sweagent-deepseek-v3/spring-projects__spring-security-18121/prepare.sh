ls -la
ls -la .github/workflows
open ".github/workflows/continuous-integration-workflow.yml"
open "build.gradle"
open "settings.gradle"
open "README.adoc"
java -version
apt-get update && apt-get install -y openjdk-17-jdk
apt-get install -y openjdk-17-jdk
java -version
./gradlew build
wget https://services.gradle.org/distributions/gradle-8.14-bin.zip
apt-get install -y wget
wget https://services.gradle.org/distributions/gradle-8.14-bin.zip
unzip gradle-8.14-bin.zip
apt-get install -y unzip
unzip gradle-8.14-bin.zip
export PATH=$PATH:$(pwd)/gradle-8.14/bin
gradle -v
gradle build
