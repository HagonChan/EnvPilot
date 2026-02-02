find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file azure-pipelines.yml
find_file Jenkinsfile
find_file requirements.txt
find_file setup.py
find_file pyproject.toml
find_file README.md
open "/testbed/README.md"
open "/testbed/docs/README.md"
find_file Makefile
find_file tox.ini
find_file build.gradle
open "/testbed/build.gradle"
./gradlew build
apt-get update && apt-get install -y openjdk-11-jdk
apt-get install -y --fix-missing openjdk-11-jdk
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && java -version
./gradlew build
wget https://services.gradle.org/distributions/gradle-8.14-bin.zip -P /tmp
apt-get install -y wget
wget https://services.gradle.org/distributions/gradle-8.14-bin.zip -P /tmp
apt-get install -y curl
curl -L -o /tmp/gradle-8.14-bin.zip https://services.gradle.org/distributions/gradle-8.14-bin.zip
mkdir -p /opt/gradle && unzip -d /opt/gradle /tmp/gradle-8.14-bin.zip
apt-get install -y unzip
mkdir -p /opt/gradle && unzip -d /opt/gradle /tmp/gradle-8.14-bin.zip
export PATH=$PATH:/opt/gradle/gradle-8.14/bin && gradle --version
./gradlew build
find_file gradle-wrapper.properties
open "/testbed/gradle/wrapper/gradle-wrapper.properties"
edit 'distributionUrl=https\://services.gradle.org/distributions/gradle-8.14-bin.zip' 'distributionUrl=file\:///tmp/gradle-8.14-bin.zip' True
./gradlew build
apt-get install -y openjdk-8-jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && java -version
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && $JAVA_HOME/bin/java -version
./gradlew build
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && $JAVA_HOME/bin/java -version
./gradlew build
apt-get install -y wget && wget -O - https://packages.adoptium.net/artifactory/api/gpg/key/public | apt-key add - && echo "deb https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list && apt-get update && apt-get install -y temurin-8-jdk
apt-get install -y gnupg
wget -O - https://packages.adoptium.net/artifactory/api/gpg/key/public | apt-key add - && echo "deb https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list && apt-get update && apt-get install -y temurin-8-jdk
export JAVA_HOME=/usr/lib/jvm/temurin-8-jdk-amd64 && $JAVA_HOME/bin/java -version
./gradlew build
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && $JAVA_HOME/bin/java -version
./gradlew build
open "/testbed/build/reports/tests/test/index.html"
