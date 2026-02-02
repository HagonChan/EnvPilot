ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "README.markdown"
open "CONTRIBUTING.md"
apt-get update && apt-get install -y openjdk-17-jdk maven yarn nodejs
java -version && mvn -version && yarn -v && node -v
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
