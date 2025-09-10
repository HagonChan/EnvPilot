ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/java-unit-test.yml"
apt-get update && apt-get install -y openjdk-8-jdk maven
mvn install -P github-actions -DskipTests=true -Dmaven.javadoc.skip=true -B -V
mvn -P github-actions test
ant clean -f java/build.xml
apt-get install -y ant
ant clean -f java/build.xml
ant jar -f java/build.xml
mkdir -p /testbed/java/lib
ant jar -f java/build.xml
apt-get install -y wget
ant jar -f java/build.xml
ant junit -f java/build.xml
