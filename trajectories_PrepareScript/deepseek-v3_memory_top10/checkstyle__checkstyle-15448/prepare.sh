ls -la
ls -la .github/workflows
open ".github/workflows/release.yml"
open ".github/workflows/release-maven-prepare.yml"
open ".ci/release-maven-prepare.sh"
java -version
apt-get update && apt-get install -y openjdk-11-jdk
java -version
mvn -version
apt-get install -y maven
mvn -version
mvn clean install -DskipTests -DskipITs -Dcheckstyle.ant.skip=true -Dcheckstyle.skip=true
mvn test
ls -la /testbed/target/surefire-reports
open "/testbed/target/surefire-reports/TEST-com.puppycrawl.tools.checkstyle.MainTest.xml"
mvn test -X
ls -la /testbed/target
