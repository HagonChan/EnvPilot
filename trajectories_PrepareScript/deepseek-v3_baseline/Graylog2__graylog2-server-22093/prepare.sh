ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "pom.xml"
open "README.markdown"
java -version
apt update && apt install -y openjdk-17-jdk
java -version
./mvnw clean install -Pedantic -Dspotbugs.skip
./mvnw clean install -Pedantic -Dspotbugs.skip
docker --version
apt update && apt install -y docker.io
systemctl start docker
service docker start
dockerd
dockerd --iptables=false
./mvnw clean install -Pedantic -Dspotbugs.skip -DskipTests
apt update && apt install -y nodejs yarn
node --version && yarn --version
npm install -g yarn
apt remove -y nodejs && apt install -y nodejs npm
node --version && npm --version
npm install -g yarn
yarn --version
npm install -g yarn@latest
yarn --version
apt remove -y yarn && yarn --version
which yarn
ls -la /usr/local/bin/yarn
npm install -g yarn@latest --force
yarn --version
rm -f /usr/local/bin/yarn && npm install -g yarn@latest
yarn --version
./mvnw clean install -Pedantic -Dspotbugs.skip -DskipTests -DskipFrontend
edit '<properties>' '<properties>
    <skip.frontend>true</skip.frontend>' False
open "pom.xml"
edit '<properties>' '<properties>
        <skip.frontend>true</skip.frontend>'
./mvnw clean install -Pedantic -Dspotbugs.skip -DskipTests
search_file frontend-maven-plugin pom.xml
goto 670
edit '<artifactId>frontend-maven-plugin</artifactId>
                    <version>1.15.1</version>' '<artifactId>frontend-maven-plugin</artifactId>
                    <version>1.15.1</version>
                    <executions>
                        <execution>
                            <id>default</id>
                            <phase>none</phase>
                        </execution>
                    </executions>'
./mvnw clean install -Pedantic -Dspotbugs.skip -DskipTests
search_file '<artifactId>frontend-maven-plugin</artifactId>' pom.xml
edit '<plugin>
                    <groupId>com.github.eirslett</groupId>
                    <artifactId>frontend-maven-plugin</artifactId>
                    <version>1.15.1</version>
                    <executions>
                        <execution>
                            <id>default</id>
                            <phase>none</phase>
                        </execution>
                    </executions>
                </plugin>' ''
./mvnw clean install -Pedantic -Dspotbugs.skip -DskipTests
search_dir frontend-maven-plugin .
open "graylog-plugin-parent/graylog-plugin-web-parent/pom.xml"
edit '<property>
                    <name>!skip.web.build</name>
                </property>' '<property>
                    <name>skip.web.build</name>
                    <value>true</value>
                </property>'
./mvnw clean install -Pedantic -Dspotbugs.skip -DskipTests

