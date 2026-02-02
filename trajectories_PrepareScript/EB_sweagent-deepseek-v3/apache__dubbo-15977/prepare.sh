ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/build-and-test-pr.yml"
goto 200
java -version
sudo apt update && sudo apt install -y openjdk-21-jdk
apt update && apt install -y openjdk-21-jdk
apt install -y openjdk-21-jdk
java -version
./mvnw clean test verify -Pjacoco,'!jdk15ge-add-open',skip-spotless -DtrimStackTrace=false -Dmaven.test.skip=false -Dcheckstyle.skip=false -Dcheckstyle_unix.skip=false -Drat.skip=false -DembeddedZookeeperPath=/testbed/.tmp/zookeeper
ls -la
chmod +x mvnw
./mvnw clean test verify -Pjacoco,'!jdk15ge-add-open',skip-spotless -DtrimStackTrace=false -Dmaven.test.skip=false -Dcheckstyle.skip=false -Dcheckstyle_unix.skip=false -Drat.skip=false -DembeddedZookeeperPath=/testbed/.tmp/zookeeper
mvn -N io.takari:maven:wrapper
apt install -y maven
mvn -v
mvn clean test verify -Pjacoco,'!jdk15ge-add-open',skip-spotless -DtrimStackTrace=false -Dmaven.test.skip=false -Dcheckstyle.skip=false -Dcheckstyle_unix.skip=false -Drat.skip=false -DembeddedZookeeperPath=/testbed/.tmp/zookeeper
