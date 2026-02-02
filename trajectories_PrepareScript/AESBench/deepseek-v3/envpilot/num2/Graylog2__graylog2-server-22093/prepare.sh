ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y openjdk-17-jdk
apt-get install -y maven
java -version && mvn -version
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 -DskipFrontend verify javadoc:javadoc
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 -Dfrontend.skip=true verify javadoc:javadoc
open "pom.xml"
search_file frontend-maven-plugin pom.xml
goto 669
search_file '<execution>.*frontend-maven-plugin' pom.xml
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 -pl '!graylog2-server' verify javadoc:javadoc
search_file '<plugin>.*frontend-maven-plugin.*</plugin>' pom.xml
search_file '<parent>' pom.xml
search_file '<profile>' pom.xml
goto 1183
ls -la graylog2-server
open "graylog2-server/pom.xml"
search_file frontend-maven-plugin graylog2-server/pom.xml
goto 1233
edit '<artifactId>frontend-maven-plugin</artifactId>
                        <configuration>' '<artifactId>frontend-maven-plugin</artifactId>
                        <configuration>
                            <skip>true</skip>' False
search_file '<artifactId>frontend-maven-plugin</artifactId>\s*<configuration>' graylog2-server/pom.xml
search_file '<artifactId>frontend-maven-plugin</artifactId>' graylog2-server/pom.xml
goto 1233
edit '<configuration>' '<configuration>
                            <skip>true</skip>' True
edit '<configuration>
                            <skip>true</skip>' '<configuration>' True
edit '<artifactId>frontend-maven-plugin</artifactId>\s*<configuration>' '<artifactId>frontend-maven-plugin</artifactId>
                        <configuration>
                            <skip>true</skip>' True
goto 1233
edit '<configuration>' '<configuration>
                            <skip>true</skip>' False
edit '<configuration>
                            <skip>true</skip>' '<configuration>' True
edit '<configuration>
                            <workingDirectory>${webInterface.path}</workingDirectory>' '<configuration>
                            <skip>true</skip>
                            <workingDirectory>${webInterface.path}</workingDirectory>' False
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
ls -la graylog2-server/target/surefire-reports
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 -DskipTests verify javadoc:javadoc
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 -DskipTests -Dmaven.antrun.skip=true verify javadoc:javadoc
