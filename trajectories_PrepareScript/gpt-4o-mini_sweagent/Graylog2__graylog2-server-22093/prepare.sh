find_file '*.yml' .
open ".github/workflows/build.yml"
mvn -v
apt-get update && apt-get install -y maven
ls -l mvnw
./mvnw -B --fail-fast verify javadoc:javadoc
apt-get install -y openjdk-17-jdk
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && export PATH=$JAVA_HOME/bin:$PATH
./mvnw -B --fail-fast verify javadoc:javadoc
ls -l graylog2-server/target/surefire-reports
open "graylog2-server/target/surefire-reports/TEST-org.graylog2.users.UserServiceImplTest.xml"
apt-get install -y docker.io
systemctl start docker
service docker start
docker --version
./mvnw test
docker ps -a
