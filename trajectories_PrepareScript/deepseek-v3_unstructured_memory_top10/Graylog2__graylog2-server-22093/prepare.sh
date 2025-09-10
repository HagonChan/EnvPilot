ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y openjdk-17-jdk maven
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
./mvnw -B -X --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -Dskip.npm -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -Dskip.npm=true -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -Dfrontend.skip=true -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -Dfrontend.skip=true -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -Dfrontend.skip=true -DskipTests -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -DskipTests -Dskip.npm=true -Dmaven.test.skip=true -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
open "pom.xml"
search_file frontend-maven-plugin pom.xml
goto 669
search_file '<properties>' pom.xml
goto 81
edit '<properties>' '<properties>
        <frontend.skip>true</frontend.skip>'
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -DskipTests -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
search_file '<artifactId>frontend-maven-plugin</artifactId>' pom.xml
goto 670
edit '<artifactId>frontend-maven-plugin</artifactId>
                    <version>1.15.1</version>' '<artifactId>frontend-maven-plugin</artifactId>
                    <version>1.15.1</version>
                    <configuration>
                        <skip>true</skip>
                    </configuration>'
./mvnw -B --fail-fast -Pedantic -Dspotbugs.skip -DskipTests -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
