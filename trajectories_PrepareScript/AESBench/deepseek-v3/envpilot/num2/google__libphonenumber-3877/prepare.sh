ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/java-unit-test.yml"
apt-get update && apt-get install -y cmake cmake-curses-gui libprotobuf-dev libgtest-dev libre2-dev libicu-dev libboost-dev libboost-thread-dev libboost-system-dev protobuf-compiler build-essential maven
apt-get install -y wget && wget -O - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add - && echo "deb https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/ $(lsb_release -cs) main" > /etc/apt/sources.list.d/adoptopenjdk.list && apt-get update && apt-get install -y adoptopenjdk-8-hotspot
apt-get clean
apt-get install -y wget && wget -O - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add - && echo "deb https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/ $(lsb_release -cs) main" > /etc/apt/sources.list.d/adoptopenjdk.list && apt-get update && apt-get install -y adoptopenjdk-8-hotspot
apt-get install -y openjdk-8-jdk
java -version
mvn -P github-actions clean install -DskipTests=true
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && mvn -P github-actions clean install -DskipTests=true
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && mvn -P github-actions clean install -DskipTests=true -Dmaven.javadoc.skip=true
mvn -P github-actions test
