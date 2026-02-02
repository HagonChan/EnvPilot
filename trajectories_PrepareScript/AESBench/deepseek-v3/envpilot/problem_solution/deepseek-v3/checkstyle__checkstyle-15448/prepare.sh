ls -la
ls -la .github/workflows
open ".github/workflows/pitest.yml"
open ".ci/pitest.sh"
sudo apt update && sudo apt install -y openjdk-11-jdk maven groovy
apt update && apt install -y openjdk-11-jdk maven groovy
java -version && mvn --version && groovy --version
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
groovy --version
mvn install
./.ci/pitest.sh
./.ci/pitest.sh --list
./.ci/pitest.sh pitest-main
