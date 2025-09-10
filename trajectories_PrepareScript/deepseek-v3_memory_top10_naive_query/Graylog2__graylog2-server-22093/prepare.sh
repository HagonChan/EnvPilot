ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
java -version
apt-get update && apt-get install -y openjdk-17-jdk
java -version
mvn -version
apt-get install -y maven
mvn -version
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
docker --version
apt-get install -y docker.io
systemctl start docker
dockerd
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
