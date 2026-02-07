ls -la
ls -la .github/workflows
open ".github/workflows/gradle.yml"
./gradlew check
sudo apt update && sudo apt install -y openjdk-17-jdk
apt update && apt install -y openjdk-17-jdk
update-java-alternatives -l
export JAVA_HOME=/usr/lib/jvm/java-1.17.0-openjdk-amd64 && ./gradlew check
wget https://services.gradle.org/distributions/gradle-8.11.1-bin.zip -P /tmp
curl -L -o /tmp/gradle-8.11.1-bin.zip https://services.gradle.org/distributions/gradle-8.11.1-bin.zip
apt install -y gradle
gradle --version
ls -la
./gradlew check
ls -la setup.sh
./setup.sh
gradle check
open "gradle.properties"
ls -la build/classes
