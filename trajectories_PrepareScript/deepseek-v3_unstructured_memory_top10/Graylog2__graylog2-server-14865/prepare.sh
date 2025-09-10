ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "README.markdown"
apt-get update && apt-get install -y openjdk-17-jdk maven
java -version && mvn -version
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
mvn -B --fail-fast -T 1C -DskipTests -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs && npm install -g yarn
apt-get install -y npm
npm install -g yarn
yarn --version
mvn -B --fail-fast -T 1C -DskipTests -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify
mvn -B --fail-fast -T 1C -DskipTests -pl data-node clean install
open "data-node/pom.xml"
mvn dependency:resolve -Dartifact=org.graylog2:graylog2-server
edit '<version>${project.version}</version>' '<version>5.0.0</version>' False
mvn -B --fail-fast -T 1C -DskipTests -pl data-node clean install
edit '<version>5.0.0</version>' '<version>${project.version}</version>' False
find . -name "graylog2-server" -type d
mvn -B --fail-fast -T 1C -DskipTests -pl graylog2-server clean install
apt-get install -y libgbm1
mvn -B --fail-fast -T 1C -DskipTests -pl graylog2-server clean install
mvn -B --fail-fast -T 1C -DskipTests -pl data-node clean install
open "data-node/pom.xml"
edit '<version>5.1.0-SNAPSHOT</version>' '<version>5.0.0</version>' False
mvn -B --fail-fast -T 1C -DskipTests -pl data-node clean install
edit '<version>5.0.0</version>' '<version>5.1.0-SNAPSHOT</version>' False
find . -name "graylog-project-parent" -type d
mvn -B --fail-fast -T 1C -DskipTests -pl graylog-project-parent clean install
mvn -B --fail-fast -T 1C -DskipTests -pl data-node clean install
mvn -B --fail-fast -T 1C -DskipTests -pl graylog2-server clean install
mvn -B --fail-fast -T 1C -DskipTests -pl data-node clean install
find . -name "graylog-parent" -type d
edit '<version>5.1.0-SNAPSHOT</version>' '<version>5.0.0</version>' False
mvn -B --fail-fast -T 1C -DskipTests -pl data-node clean install
edit '<version>5.0.0</version>' '<version>5.1.0-SNAPSHOT</version>' False
find . -name "graylog-project-parent" -type d
mvn -B --fail-fast -T 1C -DskipTests -pl graylog-project-parent clean install
mvn -B --fail-fast -T 1C -DskipTests -pl data-node clean install
mvn -B --fail-fast -T 1C -DskipTests -pl graylog2-server clean install
mvn -B --fail-fast -T 1C -DskipTests -pl data-node clean install
find . -name "graylog-parent" -type d
edit '<version>5.1.0-SNAPSHOT</version>' '<version>5.0.0</version>' False
mvn -B --fail-fast -T 1C -DskipTests -pl data-node clean install
edit '<version>5.0.0</version>' '<version>5.1.0-SNAPSHOT</version>' False
find . -name "graylog-project-parent" -type d
mvn -B --fail-fast -T 1C -DskipTests -pl graylog-project-parent clean install
mvn -B --fail-fast -T 1C -DskipTests -pl data-node clean install

