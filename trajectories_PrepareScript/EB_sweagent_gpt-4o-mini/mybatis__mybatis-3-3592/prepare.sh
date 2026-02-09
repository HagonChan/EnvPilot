
find_file '*.yml'
find_file '*.yaml'
open "/testbed/.github/workflows/ci.yaml"
find_file mvnw
open "/testbed/mvnw"
echo $JAVA_HOME
apt update && apt install -y openjdk-21-jdk
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
./mvnw test
