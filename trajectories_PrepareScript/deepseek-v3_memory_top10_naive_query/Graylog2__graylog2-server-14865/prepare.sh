ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y openjdk-17-jdk
apt-get install -y maven
java -version && mvn -version
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
mvn -B --fail-fast verify
mvn -B --fail-fast verify -Dskip.yarn -Dskip.npm
mvn -B --fail-fast verify -Dfrontend.skip
mvn -B --fail-fast verify -pl '!graylog2-server'
mvn -B --fail-fast verify -pl '!graylog2-server,!graylog-plugin-parent'
mvn -B --fail-fast verify -pl '!graylog2-server,!graylog-plugin-parent,!graylog-storage-elasticsearch7,!graylog-storage-opensearch2,!full-backend-tests'
mvn -B --fail-fast verify -pl '!graylog2-server,!graylog-plugin-parent,!graylog-storage-elasticsearch7,!graylog-storage-opensearch2,!full-backend-tests,!graylog-plugin-web-parent'
mvn -B --fail-fast verify -pl '!graylog2-server,!graylog-plugin-parent,!graylog-storage-elasticsearch7,!graylog-storage-opensearch2,!full-backend-tests'
mvn -B --fail-fast verify -pl '!graylog-parent,!graylog-project-parent,!graylog-plugin-parent,!graylog-plugin-web-parent,!graylog2-server,!graylog-storage-elasticsearch7,!graylog-storage-opensearch2,!full-backend-tests'

mvn -B --fail-fast verify -pl '!graylog-parent,!graylog-project-parent,!graylog-plugin-parent,!graylog-plugin-web-parent,!graylog2-server,!graylog-storage-elasticsearch7,!graylog-storage-opensearch2,!full-backend-tests'
mvn -B help:evaluate -Dexpression=project.modules -q -DforceStdout
mvn -B --fail-fast verify -pl 'graylog-plugin-archetype,distribution,data-node,data-node-distribution'
mvn -B --fail-fast verify -pl 'graylog-plugin-archetype,data-node,data-node-distribution'
