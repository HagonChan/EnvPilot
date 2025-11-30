
find_file pom.xml
open "/testbed/pom.xml"
apt-get update
apt-get install -y openjdk-17-jdk maven
python3 -c "import urllib.request; urllib.request.urlretrieve('https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.3.1/maven-wrapper-3.3.1.jar', '.mvn/wrapper/maven-wrapper.jar')"
./mvnw -B -V -ntp clean package -Pprod -DskipTests
./mvnw test -DskipTests=false
find_file '*.txt' /testbed/kafka-ui-api/target/surefire-reports
open "/testbed/kafka-ui-api/target/surefire-reports/com.provectus.kafka.ui.service.SendAndReadTests.txt"
