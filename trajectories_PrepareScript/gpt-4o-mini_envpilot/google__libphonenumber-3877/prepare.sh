ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/java-unit-test.yml"
apt install -y openjdk-8-jdk maven
apt-get update
apt install -y openjdk-8-jdk maven
apt install -y build-essential cmake
apt install -y libgtest-dev
mvn install -P github-actions -DskipTests=true -Dmaven.javadoc.skip=true -B -V
mvn -P github-actions test
