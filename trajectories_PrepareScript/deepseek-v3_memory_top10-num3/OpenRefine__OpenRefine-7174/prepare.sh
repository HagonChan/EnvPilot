ls -la
ls -la .github/workflows
open ".github/workflows/pull_request_server.yml"
apt-get update && apt-get install -y openjdk-21-jdk maven
java -version && mvn -version
mvn -T 4 -B compile test-compile formatter:validate impsort:check javadoc:javadoc -Ddoclint=html,syntax,accessibility,reference
