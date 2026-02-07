ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "pom.xml"
apt-get update && apt-get install -y openjdk-17-jdk
java -version
./mvnw clean install
./mvnw clean install -DskipTests
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt-get update && apt-get install -y yarn nodejs
apt-get install -y curl gnupg
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt-get update && apt-get install -y yarn nodejs
yarn --version && node --version
./mvnw clean install
edit '<plugin>
                <groupId>com.github.eirslett</groupId>
                <artifactId>frontend-maven-plugin</artifactId>
                <version>1.15.1</version>
                <executions>
                    <execution>
                        <id>install node and yarn</id>
                        <goals>
                            <goal>install-node-and-yarn</goal>
                        </goals>' '<plugin>
                <groupId>com.github.eirslett</groupId>
                <artifactId>frontend-maven-plugin</artifactId>
                <version>1.15.1</version>
                <configuration>
                    <installDirectory>target</installDirectory>
                    <nodeVersion>v12.22.9</nodeVersion>
                    <yarnVersion>v1.22.22</yarnVersion>
                    <skip>true</skip>
                </configuration>
                <executions>
                    <execution>
                        <id>install node and yarn</id>
                        <goals>
                            <goal>install-node-and-yarn</goal>
                        </goals>' True
open "pom.xml"
search_file frontend-maven-plugin
goto 669
scroll_down
search_file '<execution>.*frontend-maven-plugin'
edit '<artifactId>frontend-maven-plugin</artifactId>\n\s*<version>1.15.1</version>' '<artifactId>frontend-maven-plugin</artifactId>\n                <version>1.15.1</version>\n                <configuration>\n                    <skip>true</skip>\n                </configuration>'
scroll_down
search_file '<executions>'
goto 713
goto 725
goto 977
goto 1171
goto 1204
search_file '<configuration>.*frontend-maven-plugin'
ls -la
open "graylog2-web-interface/pom.xml"
search_file '<plugin>.*frontend-maven-plugin'
open "graylog2-server/pom.xml"
ls -la graylog2-web-interface
cd graylog2-web-interface && yarn install && yarn build
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && apt-get install -y nodejs
dpkg --force-all -r libnode72 && apt-get install -y nodejs
node --version && yarn --version
yarn install && yarn build
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version && yarn --version
yarn install && yarn build
PUPPETEER_SKIP_DOWNLOAD=true yarn install && yarn build
cd .. && ./mvnw clean install -DskipTests
edit '<plugin>
                <groupId>com.github.eirslett</groupId>
                <artifactId>frontend-maven-plugin</artifactId>
                <version>1.15.1</version>
                <executions>
                    <execution>
                        <id>install node and yarn</id>
                        <goals>
                            <goal>install-node-and-yarn</goal>
                        </goals>
                    </execution>
                    <execution>
                        <id>yarn install</id>
                        <goals>
                            <goal>yarn</goal>
                        </goals>
                        <configuration>
                            <arguments>install</arguments>
                        </configuration>
                    </execution>
                    <execution>
                        <id>yarn run check-production-build</id>
                        <goals>
                            <goal>yarn</goal>
                        </goals>
                        <configuration>
                            <arguments>run check-production-build</arguments>
                        </configuration>
                    </execution>
                </executions>' '<plugin>
                <groupId>com.github.eirslett</groupId>
                <artifactId>frontend-maven-plugin</artifactId>
                <version>1.15.1</version>
                <executions>
                    <execution>
                        <id>install node and yarn</id>
                        <goals>
                            <goal>install-node-and-yarn</goal>
                        </goals>
                        <phase>none</phase>
                    </execution>
                    <execution>
                        <id>yarn install</id>
                        <goals>
                            <goal>yarn</goal>
                        </goals>
                        <phase>none</phase>
                        <configuration>
                            <arguments>install</arguments>
                        </configuration>
                    </execution>
                    <execution>
                        <id>yarn run check-production-build</id>
                        <goals>
                            <goal>yarn</goal>
                        </goals>
                        <phase>none</phase>
                        <configuration>
                            <arguments>run check-production-build</arguments>
                        </configuration>
                    </execution>
                </executions>' True
search_file '<plugin>.*frontend-maven-plugin'
open "pom.xml"
goto 1135
goto 1198

