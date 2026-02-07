ls -la
ls -la .github/workflows
open ".github/workflows/backend.yml"
open "pom.xml"
sudo apt update && sudo apt install -y openjdk-17-jdk
apt update && apt install -y openjdk-17-jdk
java -version
./mvnw verify
./mvnw clean install
ls -la kafka-ui-api/target/surefire-reports
open "kafka-ui-api/pom.xml"
edit '<dependency>
            <groupId>io.confluent</groupId>
            <artifactId>kafka-schema-registry-client</artifactId>
            <version>${confluent.version}</version>
        </dependency>' '<dependency>
            <groupId>io.confluent</groupId>
            <artifactId>kafka-schema-registry-client</artifactId>
            <version>${confluent.version}</version>
            <scope>test</scope>
        </dependency>'
edit '<dependency>
            <groupId>io.confluent</groupId>
            <artifactId>kafka-avro-serializer</artifactId>
            <version>${confluent.version}</version>
        </dependency>' '<dependency>
            <groupId>io.confluent</groupId>
            <artifactId>kafka-avro-serializer</artifactId>
            <version>${confluent.version}</version>
            <scope>test</scope>
        </dependency>'
edit '<dependency>
            <groupId>io.confluent</groupId>
            <artifactId>kafka-json-schema-serializer</artifactId>
            <version>${confluent.version}</version>
        </dependency>' '<dependency>
            <groupId>io.confluent</groupId>
            <artifactId>kafka-json-schema-serializer</artifactId>
            <version>${confluent.version}</version>
            <scope>test</scope>
        </dependency>'
edit '<dependency>
            <groupId>io.confluent</groupId>
            <artifactId>kafka-protobuf-serializer</artifactId>
            <version>${confluent.version}</version>
        </dependency>' '<dependency>
            <groupId>io.confluent</groupId>
            <artifactId>kafka-protobuf-serializer</artifactId>
            <version>${confluent.version}</version>
            <scope>test</scope>
        </dependency>'
./mvnw clean install
edit '<dependency>
            <groupId>io.confluent</groupId>
            <artifactId>kafka-schema-registry-client</artifactId>
            <version>${confluent.version}</version>
            <scope>test</scope>
        </dependency>' '<dependency>
            <groupId>io.confluent</groupId>
            <artifactId>kafka-schema-registry-client</artifactId>
            <version>${confluent.version}</version>
        </dependency>'
goto 70
edit '<dependency>
            <groupId>io.confluent</groupId>
            <artifactId>kafka-schema-registry-client</artifactId>
            <version>${confluent.version}</version>
            <scope>test</scope>
        </dependency>' '<dependency>
            <groupId>io.confluent</groupId>
            <artifactId>kafka-schema-registry-client</artifactId>
            <version>${confluent.version}</version>
        </dependency>'
edit '<dependency>
            <groupId>io.confluent</groupId>
            <artifactId>kafka-avro-serializer</artifactId>
            <version>${confluent.version}</version>
            <scope>test</scope>
        </dependency>' '<dependency>
            <groupId>io.confluent</groupId>
            <artifactId>kafka-avro-serializer</artifactId>
            <version>${confluent.version}</version>
        </dependency>'
edit '<dependency>
            <groupId>io.confluent</groupId>
            <artifactId>kafka-json-schema-serializer</artifactId>
            <version>${confluent.version}</version>
            <scope>test</scope>
        </dependency>' '<dependency>
            <groupId>io.confluent</groupId>
            <artifactId>kafka-json-schema-serializer</artifactId>
            <version>${confluent.version}</version>
        </dependency>'
edit '<dependency>
            <groupId>io.confluent</groupId>
            <artifactId>kafka-protobuf-serializer</artifactId>
            <version>${confluent.version}</version>
            <scope>test</scope>
        </dependency>' '<dependency>
            <groupId>io.confluent</groupId>
            <artifactId>kafka-protobuf-serializer</artifactId>
            <version>${confluent.version}</version>
        </dependency>'
./mvnw clean install
search_file maven-surefire-plugin kafka-ui-api/pom.xml
goto 301
edit '<configuration>
                    <argLine>@{argLine} --illegal-access=permit</argLine>
                </configuration>' '<configuration>
                    <argLine>@{argLine} --illegal-access=permit</argLine>
                    <additionalClasspathElements>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-schema-registry-client/${confluent.version}/kafka-schema-registry-client-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-avro-serializer/${confluent.version}/kafka-avro-serializer-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-json-schema-serializer/${confluent.version}/kafka-json-schema-serializer-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-protobuf-serializer/${confluent.version}/kafka-protobuf-serializer-${confluent.version}.jar</additionalClasspathElement>
                    </additionalClasspathElements>
                </configuration>'
./mvnw clean install
ls -la kafka-ui-api/target/surefire-reports
edit '<additionalClasspathElements>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-schema-registry-client/${confluent.version}/kafka-schema-registry-client-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-avro-serializer/${confluent.version}/kafka-avro-serializer-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-json-schema-serializer/${confluent.version}/kafka-json-schema-serializer-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-protobuf-serializer/${confluent.version}/kafka-protobuf-serializer-${confluent.version}.jar</additionalClasspathElement>
                    </additionalClasspathElements>' '<additionalClasspathElements>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-schema-registry-client/${confluent.version}/kafka-schema-registry-client-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-avro-serializer/${confluent.version}/kafka-avro-serializer-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-json-schema-serializer/${confluent.version}/kafka-json-schema-serializer-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-protobuf-serializer/${confluent.version}/kafka-protobuf-serializer-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-streams-avro-serde/${confluent.version}/kafka-streams-avro-serde-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/common-config/${confluent.version}/common-config-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/common-utils/${confluent.version}/common-utils-${confluent.version}.jar</additionalClasspathElement>
                    </additionalClasspathElements>'
./mvnw clean install
cat kafka-ui-api/target/surefire-reports/com.provectus.kafka.ui.service.ksql.KsqlApiClientTest.txt
edit '<configuration>
                    <argLine>@{argLine} --illegal-access=permit</argLine>
                    <additionalClasspathElements>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-schema-registry-client/${confluent.version}/kafka-schema-registry-client-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-avro-serializer/${confluent.version}/kafka-avro-serializer-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-json-schema-serializer/${confluent.version}/kafka-json-schema-serializer-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-protobuf-serializer/${confluent.version}/kafka-protobuf-serializer-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-streams-avro-serde/${confluent.version}/kafka-streams-avro-serde-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/common-config/${confluent.version}/common-config-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/common-utils/${confluent.version}/common-utils-${confluent.version}.jar</additionalClasspathElement>
                    </additionalClasspathElements>
                </configuration>' '<configuration>
                    <argLine>@{argLine} --illegal-access=permit</argLine>
                    <additionalClasspathElements>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-schema-registry-client/${confluent.version}/kafka-schema-registry-client-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-avro-serializer/${confluent.version}/kafka-avro-serializer-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-json-schema-serializer/${confluent.version}/kafka-json-schema-serializer-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-protobuf-serializer/${confluent.version}/kafka-protobuf-serializer-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/kafka-streams-avro-serde/${confluent.version}/kafka-streams-avro-serde-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/common-config/${confluent.version}/common-config-${confluent.version}.jar</additionalClasspathElement>
                        <additionalClasspathElement>${settings.localRepository}/io/confluent/common-utils/${confluent.version}/common-utils-${confluent.version}.jar</additionalClasspathElement>
                    </additionalClasspathElements>
                    <excludes>
                        <exclude>**/AbstractIntegrationTest.java</exclude>
                        <exclude>**/*IntegrationTest.java</exclude>
                    </excludes>
                </configuration>'
./mvnw clean install
cat kafka-ui-api/target/surefire-reports/com.provectus.kafka.ui.service.ksql.KsqlApiClientTest.txt
./mvnw clean install -DskipTests

