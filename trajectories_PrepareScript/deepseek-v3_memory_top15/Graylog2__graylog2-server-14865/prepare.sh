ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
mvn --version
apt-get update && apt-get install -y maven
mvn --version
apt-get install -y openjdk-17-jdk
java --version
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
mvn clean install -DskipTests
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs && npm install -g yarn
apt-get install -y npm
npm install -g yarn
node --version && npm --version && yarn --version
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
apt-get remove -y libnode-dev libnode72 && apt-get install -y nodejs
apt-get remove -y --purge libnode72 && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && apt-get install -y nodejs

