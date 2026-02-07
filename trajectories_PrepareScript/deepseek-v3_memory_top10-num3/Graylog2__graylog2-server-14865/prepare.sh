ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y openjdk-17-jdk maven yarn nodejs
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
ls -la /testbed/graylog2-server/target/surefire-reports
apt-get install -y docker.io
systemctl start docker
service docker start
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc -DskipTests
yarn --version
npm install -g yarn
apt-get install -y nodejs npm
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
apt-get remove -y libnode72 && apt-get install -y nodejs
dpkg --force-all -r libnode72 && apt-get install -y nodejs
node --version && npm --version && yarn --version
npm install -g yarn
npm install -g yarn --force
yarn --version
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc -DskipTests
yarn run check-production-build
find . -name package.json
cd graylog2-web-interface
yarn install
yarn run check-production-build
apt-get install -y libgbm1
yarn run check-production-build
cd /testbed
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc -DskipTests
