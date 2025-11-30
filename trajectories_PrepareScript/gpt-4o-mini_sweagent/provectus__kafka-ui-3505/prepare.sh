
find_file '*.yml'
open "/testbed/.github/workflows/backend.yml"
mvn -v
apt update && apt install -y maven openjdk-17-jdk

mvn -v
./mvnw clean verify
find_file '*.txt' kafka-ui-api/target/surefire-reports
open "/testbed/kafka-ui-api/target/surefire-reports/com.provectus.kafka.ui.service.ksql.KsqlServiceV2Test.txt"
find_file Dockerfile
open "/testbed/kafka-ui-api/Dockerfile"
find_file docker-compose.yml
docker build -t kafka-ui-api -f kafka-ui-api/Dockerfile .
apt update && apt install -y docker.io
systemctl start docker
service docker start
docker build -t kafka-ui-api -f kafka-ui-api/Dockerfile .
find_file 'README*'
open "/testbed/README.md"
find_file DOCKER_COMPOSE.md documentation/compose
open "/testbed/documentation/compose/DOCKER_COMPOSE.md"
docker-compose -f documentation/compose/kafka-ui.yaml up -d
find_file Makefile
find_file '*.sh'
open "/testbed/README.md"
./mvnw clean install -DskipTests
search_dir test
find_file tests
find_file '*' kafka-ui-e2e-checks
./mvnw -pl kafka-ui-e2e-checks test
./mvnw clean test -pl kafka-ui-e2e-checks
open "/testbed/kafka-ui-e2e-checks/pom.xml"
search_file '<profiles>' /testbed/kafka-ui-e2e-checks/pom.xml
goto 207
./mvnw -Pprod test -pl kafka-ui-e2e-checks
./mvnw -Pprod test -pl kafka-ui-e2e-checks -e
ls -l kafka-ui-e2e-checks
find_file '*Test.java' kafka-ui-e2e-checks/src
open "/testbed/kafka-ui-e2e-checks/src/test/java/com/provectus/kafka/ui/smokeSuite/SmokeTest.java"
goto 50
goto 30
goto 20
goto 10
goto 50
goto 30
goto 10
./mvnw -Pprod -Dtest=SmokeTest test -pl kafka-ui-e2e-checks
search_file maven-surefire-plugin /testbed/kafka-ui-e2e-checks/pom.xml

