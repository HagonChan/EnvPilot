ls -a
ls -a .github/workflows
open ".github/workflows/build.yml"
apt-get install -y openjdk-17-jdk
apt-get install -y maven
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
mvn -B --fail-fast clean compile -DskipTests
mvn -B --fail-fast test
ls -la /testbed/graylog2-server/target/surefire-reports
apt-get install -y docker.io
systemctl start docker
service docker start
docker --version
dockerd &
mvn -B --fail-fast test
docker info
sudo dockerd
mvn -B --fail-fast test -Dtest=\!*Docker*,\!*Container*
