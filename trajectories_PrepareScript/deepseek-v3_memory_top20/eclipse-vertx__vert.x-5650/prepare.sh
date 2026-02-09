ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y openjdk-11-jdk maven
java -version && mvn --version
mvn -s .github/maven-ci-settings.xml -q clean verify -B
ls -la /testbed/vertx-core/target/surefire-reports
open "/testbed/vertx-core/target/surefire-reports/TEST-io.vertx.test.core.AsyncTestBaseTest.xml"
open "/testbed/vertx-core/target/surefire-reports/TEST-io.vertx.test.core.FileSystemTest.xml"
