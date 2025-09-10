ls -la
ls -la .github/workflows
open ".github/workflows/java-unit-test.yml"
open "pom.xml"
ls -la java
open "java/pom.xml"
open "java/build.xml"
sudo apt-get update && sudo apt-get install -y openjdk-8-jdk maven ant
apt-get update && apt-get install -y openjdk-8-jdk maven ant
java -version && mvn -version && ant -version
update-alternatives --config java
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && export PATH=$JAVA_HOME/bin:$PATH && java -version
cd java && mvn install -DskipTests
mvn test
mvn test
ant clean && ant jar && ant junit
apt-get install -y wget && mkdir -p /testbed/java/lib
ant clean && ant jar && ant junit
ant junitreport
ls -la /testbed/java/build/junitreport
