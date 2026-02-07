ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y openjdk-17-jdk
apt-get install -y maven
apt-get install -y yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt-get update && apt-get install -y yarn
apt-get install -y curl gnupg
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt-get update && apt-get install -y yarn
mvn -B --fail-fast -Pedantic -Dspotbugs.skip -Dmaven.wagon.http.retryHandler.class=standard -Dmaven.wagon.http.retryHandler.count=3 -Dhttp.keepAlive=false -Dmaven.wagon.http.pool=false -Dmaven.wagon.httpconnectionManager.ttlSeconds=120 verify javadoc:javadoc
mvn clean install
ls -la /testbed/graylog2-server/target/surefire-reports
mvn clean install -DskipTests
cd graylog2-web-interface && yarn install
apt-get remove -y nodejs && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get clean && apt-get update && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
rm -rf /var/cache/apt/archives/* && apt-get clean && apt-get update && apt-get install -y nodejs
curl -o nodejs.deb https://deb.nodesource.com/node_16.x/pool/main/n/nodejs/nodejs_16.20.2-deb-1nodesource1_amd64.deb && dpkg -i nodejs.deb
apt-get remove -y nodejs-doc && dpkg -i nodejs.deb
apt-get remove -y libnode72 && dpkg -i nodejs.deb
node --version && yarn --version
cd .. && mvn clean install -DskipTests
cd graylog2-web-interface && yarn install && yarn run check-production-build
apt-get install -y libgbm1
rm -rf /var/cache/apt/archives/* && apt-get clean && apt-get update && apt-get install -y libgbm1
curl -o libgbm1.deb http://mirrors.aliyun.com/ubuntu/pool/main/libg/libgbm/libgbm1_23.2.1-1ubuntu3_amd64.deb && dpkg -i libgbm1.deb
curl -o libgbm1.deb http://security.ubuntu.com/ubuntu/pool/main/libg/libgbm/libgbm1_23.2.1-1ubuntu3_amd64.deb && dpkg -i libgbm1.deb
cd .. && mvn clean install -DskipTests -DskipFrontendBuild
mvn clean install -DskipTests -DskipFrontendBuild=true
open "pom.xml"
search_file frontend-maven-plugin pom.xml
goto 366
edit '<artifactId>frontend-maven-plugin</artifactId>' '<artifactId>frontend-maven-plugin</artifactId>
                    <configuration>
                        <skip>true</skip>
                    </configuration>' False
mvn clean install -DskipTests
