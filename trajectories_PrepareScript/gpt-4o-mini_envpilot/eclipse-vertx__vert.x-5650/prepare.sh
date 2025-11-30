ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y openjdk-17-jdk maven
mvn -s .github/maven-ci-settings.xml -q clean verify -B
ls -la vertx-core/target/surefire-reports
open "vertx-core/target/surefire-reports/TEST-io.vertx.test.core.AsyncTestBaseTest.xml"
