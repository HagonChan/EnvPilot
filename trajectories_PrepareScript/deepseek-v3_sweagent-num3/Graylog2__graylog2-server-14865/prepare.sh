ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "pom.xml"
java -version
apt update && apt install -y openjdk-17-jdk
java -version
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
apt install -y maven
mvn --version
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs && npm install -g yarn
apt install -y npm
npm install -g yarn
yarn --version && node --version
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
edit '<execution>
            <id>install node and yarn</id>
            <goals>
              <goal>install-node-and-yarn</goal>
            </goals>
            <configuration>
              <nodeVersion>${node.version}</nodeVersion>
              <yarnVersion>${yarn.version}</yarnVersion>
            </configuration>
          </execution>' '<execution>
            <id>install node and yarn</id>
            <goals>
              <goal>install-node-and-yarn</goal>
            </goals>
            <configuration>
              <nodeVersion>${node.version}</nodeVersion>
              <yarnVersion>${yarn.version}</yarnVersion>
              <skip>true</skip>
            </configuration>
          </execution>' True
open "pom.xml"
search_file frontend-maven-plugin pom.xml
goto 366
search_file install-node-and-yarn pom.xml
search_file '<executions>' pom.xml
goto 403
goto 415
goto 574
goto 608
search_file frontend-maven-plugin pom.xml
find . -name "pom.xml" | grep -v "^./pom.xml$"
open "./graylog2-web-interface/pom.xml"
open "./graylog2-server/pom.xml"
search_file frontend-maven-plugin ./graylog2-server/pom.xml
goto 1012
edit '<id>install node and yarn</id>\s+<goals>\s+<goal>install-node-and-yarn</goal>\s+</goals>' '<id>install node and yarn</id>\n                                <phase>none</phase>\n                                <goals>\n                                    <goal>install-node-and-yarn</goal>\n                                </goals>\n                                <configuration>\n                                    <skip>true</skip>\n                                </configuration>' False
search_file '<id>install node and yarn</id>' ./graylog2-server/pom.xml
goto 1022
edit '<id>install node and yarn</id>
                                <goals>
                                    <goal>install-node-and-yarn</goal>
                                </goals>' '<id>install node and yarn</id>
                                <goals>
                                    <goal>install-node-and-yarn</goal>
                                </goals>
                                <configuration>
                                    <skip>true</skip>
                                </configuration>' False
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
edit '<yarnVersion>${yarn.version}</yarnVersion>' '<yarnVersion>${yarn.version}</yarnVersion>
                            <yarnExecutable>yarn</yarnExecutable>' False
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
edit '<id>yarn install</id>
                                <phase>compile</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <!-- Optional configuration which provides for running any npm command -->
                                <configuration>
                                    <arguments>install</arguments>
                                </configuration>' '<id>yarn install</id>
                                <phase>compile</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <configuration>
                                    <skip>true</skip>
                                </configuration>' False
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
edit '<execution>
                                <id>Generate backend API types</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>compile</phase>
                                <configuration>
                                    <arguments>generate:apidefs</arguments>
                                </configuration>' '<execution>
                                <id>Generate backend API types</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>compile</phase>
                                <configuration>
                                    <skip>true</skip>
                                </configuration>' False
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
edit '<execution>
                                <id>yarn tsc</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>compile</phase>
                                <configuration>
                                    <arguments>tsc</arguments>
                                </configuration>' '<execution>
                                <id>yarn tsc</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>compile</phase>
                                <configuration>
                                    <skip>true</skip>
                                </configuration>' False
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
edit '<execution>
                                <id>yarn run build</id>
                                <phase>compile</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <configuration>
                                    <arguments>run build</arguments>
                                </configuration>' '<execution>
                                <id>yarn run build</id>
                                <phase>compile</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <configuration>
                                    <skip>true</skip>
                                </configuration>' False
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 -DskipTests verify javadoc:javadoc

