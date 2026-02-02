ls -la
ls -la .github/workflows
open ".github/workflows/maven.yaml"
open "pom.xml"
open "BUILDING"
java -version
apt-get update && apt-get install -y amazon-corretto-8
apt-get install -y openjdk-8-jdk
java -version
apt-get install -y maven
mvn -version
mvn test
ls -la /testbed/store/target/surefire-reports
open "/testbed/store/target/surefire-reports/TEST-org.apache.rocketmq.store.DefaultMessageStoreTest.xml"
open "/testbed/store/target/surefire-reports/TEST-org.apache.rocketmq.store.RocksDBMessageStoreTest.xml"
ls -la /testbed/store/target/surefire-reports/*.txt
open "/testbed/store/target/surefire-reports/org.apache.rocketmq.store.DefaultMessageStoreTest.txt"
open "pom.xml"
search_file '<skipTests>' pom.xml
search_file '<excludes>' pom.xml
find_file DefaultMessageStoreTest.java
open "/testbed/store/src/test/java/org/apache/rocketmq/store/DefaultMessageStoreTest.java"
mvn test -X
mvn test -Dtest=org.apache.rocketmq.store.DefaultMessageStoreTest
open "/testbed/store/pom.xml"
open "/testbed/pom.xml"
mvn test -Dtest=org.apache.rocketmq.store.DefaultMessageStoreTest
ls -la /testbed/store/target/surefire-reports
open "/testbed/store/target/surefire-reports/TEST-org.apache.rocketmq.store.DefaultMessageStoreTest.xml"
open "/testbed/store/src/test/java/org/apache/rocketmq/store/DefaultMessageStoreTest.java"
mvn test -Dtest=org.apache.rocketmq.store.DefaultMessageStoreTest -X
mvn test -Dtest=org.apache.rocketmq.store.DefaultMessageStoreTest -DfailIfNoTests=false
