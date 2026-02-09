ls -la
ls -la .github/workflows
open ".github/workflows/gradle_jdk11.yml"
apt-get update && apt-get install -y openjdk-11-jdk
chmod +x gradlew
java -version
./gradlew build --stacktrace
apt-get install -y wget && wget -qO - https://packages.adoptium.net/artifactory/api/gpg/key/public | apt-key add - && echo "deb https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list && apt-get update && apt-get install -y temurin-8-jdk
apt-get install -y gnupg
wget -qO - https://packages.adoptium.net/artifactory/api/gpg/key/public | apt-key add - && echo "deb https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list && apt-get update && apt-get install -y temurin-8-jdk
java -version
update-alternatives --config java
export JAVA_HOME=/usr/lib/jvm/temurin-8-jdk-amd64 && ./gradlew build --stacktrace
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && ./gradlew build --stacktrace
