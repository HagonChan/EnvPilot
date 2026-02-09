ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open ".github/workflows/template.flink-ci.yml"
open "README.md"
goto 100
sudo apt-get update && sudo apt-get install -y git curl wget sudo python3-dev net-tools zip bc libapr1 libssl1.0.0
apt-get update && apt-get install -y git curl wget python3-dev net-tools zip bc libapr1 libssl1.0.0
apt-get install -y git curl wget python3-dev net-tools zip bc libapr1 libssl-dev
apt-get install -y openjdk-17-jdk
java -version
apt-get install -y maven
mvn -version
./mvnw clean package -DskipTests -Djdk17 -Pjava17-target
./mvnw test
ls -la /testbed/flink-core/target/surefire-reports
open "/testbed/flink-core/target/surefire-reports/org.apache.flink.util.ExceptionUtilsTest.txt"
open "/testbed/flink-core/target/surefire-reports/org.apache.flink.util.NetUtilsTest.txt"
open "/testbed/flink-core/target/surefire-reports/TEST-org.apache.flink.api.common.ExecutionConfigTest.xml"

