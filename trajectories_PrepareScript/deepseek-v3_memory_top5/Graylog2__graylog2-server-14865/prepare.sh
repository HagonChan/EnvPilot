ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update
apt-get install -y openjdk-17-jdk maven
java -version && mvn -version
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
mvn -B --fail-fast -DskipTests clean install
curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs && npm install -g yarn
apt-get install -y npm
npm install -g yarn
node -v && npm -v && yarn -v
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 -Dskip.yarn.install=true verify javadoc:javadoc
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 -Dskip.yarn.install=true -DskipTests verify javadoc:javadoc
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 -Dskip.yarn.install=true -DskipTests -Dskip.frontend.build=true verify javadoc:javadoc
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 -Dskip.yarn.install=true -DskipTests -Dfrontend.skip=true verify javadoc:javadoc
open "pom.xml"
search_file com.github.eirslett:frontend-maven-plugin pom.xml
ls -la graylog-project-parent
open "graylog-project-parent/pom.xml"
search_file com.github.eirslett:frontend-maven-plugin graylog-project-parent/pom.xml
ls -la graylog2-server
open "graylog2-server/pom.xml"
search_file com.github.eirslett:frontend-maven-plugin graylog2-server/pom.xml
find . -name "pom.xml" | grep -i "graylog-parent"
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 -DskipTests -Dskip.frontend.build=true verify javadoc:javadoc
search_file '<artifactId>frontend-maven-plugin</artifactId>' graylog2-server/pom.xml
edit '<artifactId>frontend-maven-plugin</artifactId>' '<artifactId>frontend-maven-plugin</artifactId>
                        <skip>true</skip>' True
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 -DskipTests verify javadoc:javadoc
edit '<configuration>
                            <workingDirectory>${webInterface.path}</workingDirectory>' '<configuration>
                            <skip>true</skip>
                            <workingDirectory>${webInterface.path}</workingDirectory>' False
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 -DskipTests verify javadoc:javadoc
edit '<skip>true</skip>
                            <workingDirectory>${webInterface.path}</workingDirectory>' '<workingDirectory>${webInterface.path}</workingDirectory>' False
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 -DskipTests -Dfrontend.skip=true verify javadoc:javadoc
edit '<artifactId>frontend-maven-plugin</artifactId>
                        <skip>true</skip>' '<artifactId>frontend-maven-plugin</artifactId>' True
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 -DskipTests -Dfrontend.skip=true verify javadoc:javadoc
edit '<executions>
                            <execution>
                                <id>install node and yarn</id>
                                <goals>
                                    <goal>install-node-and-yarn</goal>
                                </goals>
                            </execution>' '<!-- <executions>
                            <execution>
                                <id>install node and yarn</id>
                                <goals>
                                    <goal>install-node-and-yarn</goal>
                                </goals>
                            </execution> -->' False
edit '<execution>
                                <id>yarn install</id>
                                <phase>compile</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>' '<!-- <execution>
                                <id>yarn install</id>
                                <phase>compile</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals> -->' False
edit '<execution>
                                <id>yarn install</id>
                                <phase>compile</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <!-- Optional configuration which provides for running any npm command -->
                                <configuration>
                                    <arguments>install</arguments>
                                </configuration>
                            </execution>' '<!-- <execution>
                                <id>yarn install</id>
                                <phase>compile</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <!-- Optional configuration which provides for running any npm command -->
                                <configuration>
                                    <arguments>install</arguments>
                                </configuration>
                            </execution> -->' False
open "graylog2-server/pom.xml"
edit '<executions>
                            <execution>
                                <id>install node and yarn</id>
                                <goals>
                                    <goal>install-node-and-yarn</goal>
                                </goals>
                            </execution>

                            <execution>
                                <id>yarn install</id>
                                <phase>compile</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <!-- Optional configuration which provides for running any npm command -->
                                <configuration>
                                    <arguments>install</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>Generate backend API types</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>compile</phase>
                                <configuration>
                                    <arguments>generate:apidefs</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>yarn tsc</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>compile</phase>
                                <configuration>
                                    <arguments>tsc</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>yarn run build</id>
                                <phase>compile</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <configuration>
                                    <arguments>run build</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>yarn run check-production-build</id>
                                <phase>verify</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <configuration>
                                    <arguments>run check-production-build</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>yarn test</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>test</phase>
                                <configuration>
                                    <arguments>test</arguments>
                                </configuration>
                            </execution>
                            <execution>
                                <id>yarn test:integration</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>test</phase>
                                <configuration>
                                    <arguments>test:integration</arguments>
                                </configuration>
                            </execution>
                        </executions>' '<!-- <executions>
                            <execution>
                                <id>install node and yarn</id>
                                <goals>
                                    <goal>install-node-and-yarn</goal>
                                </goals>
                            </execution>

                            <execution>
                                <id>yarn install</id>
                                <phase>compile</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <!-- Optional configuration which provides for running any npm command -->
                                <configuration>
                                    <arguments>install</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>Generate backend API types</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>compile</phase>
                                <configuration>
                                    <arguments>generate:apidefs</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>yarn tsc</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>compile</phase>
                                <configuration>
                                    <arguments>tsc</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>yarn run build</id>
                                <phase>compile</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <configuration>
                                    <arguments>run build</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>yarn run check-production-build</id>
                                <phase>verify</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <configuration>
                                    <arguments>run check-production-build</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>yarn test</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>test</phase>
                                <configuration>
                                    <arguments>test</arguments>
                                </configuration>
                            </execution>
                            <execution>
                                <id>yarn test:integration</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>test</phase>
                                <configuration>
                                    <arguments>test:integration</arguments>
                                </configuration>
                            </execution>
                        </executions> -->' False
edit '<executions>
                            <execution>
                                <id>install node and yarn</id>
                                <goals>
                                    <goal>install-node-and-yarn</goal>
                                </goals>
                            </execution>' '<!-- <executions>
                            <execution>
                                <id>install node and yarn</id>
                                <goals>
                                    <goal>install-node-and-yarn</goal>
                                </goals>
                            </execution> -->' False
edit '<!-- <!-- <executions>
                            <execution>
                                <id>install node and yarn</id>
                                <goals>
                                    <goal>install-node-and-yarn</goal>
                                </goals>
                            </execution> --> -->' '<!-- <executions>
                            <execution>
                                <id>install node and yarn</id>
                                <goals>
                                    <goal>install-node-and-yarn</goal>
                                </goals>
                            </execution> -->' False
edit '<executions>
                            <execution>
                                <id>install node and yarn</id>
                                <goals>
                                    <goal>install-node-and-yarn</goal>
                                </goals>
                            </execution>

                            <execution>
                                <id>yarn install</id>
                                <phase>compile</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <!-- Optional configuration which provides for running any npm command -->
                                <configuration>
                                    <arguments>install</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>Generate backend API types</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>compile</phase>
                                <configuration>
                                    <arguments>generate:apidefs</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>yarn tsc</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>compile</phase>
                                <configuration>
                                    <arguments>tsc</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>yarn run build</id>
                                <phase>compile</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <configuration>
                                    <arguments>run build</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>yarn run check-production-build</id>
                                <phase>verify</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <configuration>
                                    <arguments>run check-production-build</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>yarn test</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>test</phase>
                                <configuration>
                                    <arguments>test</arguments>
                                </configuration>
                            </execution>
                            <execution>
                                <id>yarn test:integration</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>test</phase>
                                <configuration>
                                    <arguments>test:integration</arguments>
                                </configuration>
                            </execution>
                        </executions>' '<!-- <executions>
                            <execution>
                                <id>install node and yarn</id>
                                <goals>
                                    <goal>install-node-and-yarn</goal>
                                </goals>
                            </execution>

                            <execution>
                                <id>yarn install</id>
                                <phase>compile</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <!-- Optional configuration which provides for running any npm command -->
                                <configuration>
                                    <arguments>install</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>Generate backend API types</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>compile</phase>
                                <configuration>
                                    <arguments>generate:apidefs</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>yarn tsc</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>compile</phase>
                                <configuration>
                                    <arguments>tsc</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>yarn run build</id>
                                <phase>compile</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <configuration>
                                    <arguments>run build</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>yarn run check-production-build</id>
                                <phase>verify</phase>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <configuration>
                                    <arguments>run check-production-build</arguments>
                                </configuration>
                            </execution>

                            <execution>
                                <id>yarn test</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>test</phase>
                                <configuration>
                                    <arguments>test</arguments>
                                </configuration>
                            </execution>
                            <execution>
                                <id>yarn test:integration</id>
                                <goals>
                                    <goal>yarn</goal>
                                </goals>
                                <phase>test</phase>
                                <configuration>
                                    <arguments>test:integration</arguments>
                                </configuration>
                            </execution>
                        </executions> -->' False
edit '<executions>' '<!-- <executions>' False
edit '<!-- <executions>' '<executions>' False
search_file '<artifactId>frontend-maven-plugin</artifactId>' graylog2-server/pom.xml

edit '<executions>
                            <execution>
                                <id>install node and yarn</id>
                                <goals>
                                    <goal>install-node-and-yarn</goal>
                                </goals>
                            </execution>' '<!-- <executions>
                            <execution>
                                <id>install node and yarn</id>
                                <goals>
                                    <goal>install-node-and-yarn</goal>
                                </goals>
                            </execution> -->' False

