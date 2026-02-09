ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/java-unit-test.yml"
apt-get update && apt-get install -y openjdk-8-jdk maven ant
java -version && mvn --version && ant -version
update-alternatives --config java
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && export PATH=$JAVA_HOME/bin:$PATH && java -version && mvn --version
mvn install -P github-actions -DskipTests=true -Dmaven.javadoc.skip=true -B -V
mvn test -P github-actions -B -V
ant clean && ant jar && ant junit
