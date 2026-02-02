ls -la
ls -la .github/workflows
open ".github/workflows/backend.yml"
apt-get update && apt-get install -y openjdk-17-jdk
java -version
./mvnw -B -V -ntp clean package -Pprod
open "pom.xml"
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs && npm install -g pnpm@7.4.0
apt-get install -y npm
npm install -g pnpm@7.4.0
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
apt-get remove -y libnode72 && apt-get install -y nodejs
dpkg --force-all -r libnode72 && apt-get install -y nodejs
node -v && npm -v
npm install -g pnpm@7.4.0
pnpm -v
./mvnw -B -V -ntp clean package -Pprod
./mvnw -B -V -ntp clean compile -Pprod
./mvnw -B -V -ntp verify -Pprod
ls -la kafka-ui-api/target/surefire-reports
open "kafka-ui-api/pom.xml"
search_file ksql kafka-ui-api/pom.xml
edit '<dependencies>' '<dependencies>
        <dependency>
            <groupId>io.confluent.ksql</groupId>
            <artifactId>ksql-rest-client</artifactId>
            <version>${confluent.version}</version>
        </dependency>' False
search_file topic-analysis kafka-ui-api/pom.xml
edit '<dependencies>' '<dependencies>
        <dependency>
            <groupId>org.apache.commons</groupId>
            <artifactId>commons-math3</artifactId>
            <version>3.6.1</version>
        </dependency>' False
./mvnw -B -V -ntp verify -Pprod
curl -s https://packages.confluent.io/maven/io/confluent/ksql/ksql-rest-client/ | grep -o 'href="[^"]*"' | sed 's/href="//;s/"//' | grep -v '^$'
edit '<version>${confluent.version}</version>' '<version>5.4.11</version>' False
./mvnw -B -V -ntp verify -Pprod
curl -s https://packages.confluent.io/maven/io/confluent/kafka-json-schema-serializer/ | grep -o 'href="[^"]*"' | sed 's/href="//;s/"//' | grep -v '^$'
edit '<version>5.4.11</version>' '<version>7.3.0</version>' False
./mvnw -B -V -ntp verify -Pprod
curl -s https://packages.confluent.io/maven/io/confluent/ksql/ksql-rest-client/ | grep -o 'href="[^"]*"' | sed 's/href="//;s/"//' | grep -v '^$'
edit '<version>7.3.0</version>' '<version>5.4.11</version>' False
./mvnw -B -V -ntp verify -Pprod
curl -s https://packages.confluent.io/maven/io/confluent/kafka-json-schema-serializer/ | grep -o 'href="[^"]*"' | sed 's/href="//;s/"//' | grep -v '^$'
edit '<version>5.4.11</version>' '<version>7.3.0</version>' False
./mvnw -B -V -ntp verify -Pprod
curl -s https://packages.confluent.io/maven/io/confluent/ksql/ksql-rest-client/ | grep -o 'href="[^"]*"' | sed 's/href="//;s/"//' | grep -v '^$'
edit '<version>7.3.0</version>' '<version>5.4.11</version>' False
./mvnw -B -V -ntp verify -Pprod
curl -s https://packages.confluent.io/maven/io/confluent/kafka-json-schema-serializer/ | grep -o 'href="[^"]*"' | sed 's/href="//;s/"//' | grep -v '^$'
edit '<version>5.4.11</version>' '<version>7.3.0</version>' False
./mvnw -B -V -ntp verify -Pprod
curl -s https://packages.confluent.io/maven/io/confluent/ksql/ksql-rest-client/ | grep -o 'href="[^"]*"' | sed 's/href="//;s/"//' | grep -v '^$'
edit '<version>7.3.0</version>' '<version>5.4.11</version>' False

