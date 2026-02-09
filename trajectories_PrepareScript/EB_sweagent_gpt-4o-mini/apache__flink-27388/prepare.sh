
find_file '*.yml'
open ".github/workflows/ci.yml"
open ".github/workflows/template.flink-ci.yml"
scroll_down
find_file compile_ci.sh
open "tools/ci/compile_ci.sh"
find_file compile.sh
open "tools/ci/compile.sh"
find_file maven-utils.sh
open "tools/ci/maven-utils.sh"
find_file '*.txt'
mvn -version
apt update
apt install maven -y
mvn -version
CI_DIR=$(pwd) ./tools/ci/compile_ci.sh
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && CI_DIR=$(pwd) ./tools/ci/compile_ci.sh
rm -f /testbed/.mvn/wrapper/maven-wrapper.jar
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && CI_DIR=$(pwd) ./tools/ci/compile_ci.sh
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && mvn clean install -DskipTests=false
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && mvn clean install -DskipTests=false -e
