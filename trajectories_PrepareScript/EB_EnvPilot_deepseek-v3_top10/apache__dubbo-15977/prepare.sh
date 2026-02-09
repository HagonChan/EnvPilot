ls -la
ls -la .github/workflows
open ".github/workflows/build-and-test-pr.yml"
apt-get update && apt-get install -y openjdk-8-jdk openjdk-11-jdk openjdk-17-jdk openjdk-21-jdk openjdk-25-jdk
apt-get install -y maven
java -version && mvn -version
./mvnw clean install -Pskip-spotless -Dmaven.test.skip=true -Dcheckstyle.skip=true -Dcheckstyle_unix.skip=true -Drat.skip=true
mkdir -p .mvn/wrapper && wget -O .mvn/wrapper/maven-wrapper.jar https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar
apt-get install -y wget
mkdir -p .mvn/wrapper && wget -O .mvn/wrapper/maven-wrapper.jar https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar
chmod +x ./mvnw && ./mvnw clean install -Pskip-spotless -Dmaven.test.skip=true -Dcheckstyle.skip=true -Dcheckstyle_unix.skip=true -Drat.skip=true
./mvnw test
./mvnw help:effective-pom | grep '<module>'
./mvnw test -pl dubbo-test-common
./mvnw test -pl dubbo-test
./mvnw test -pl dubbo-test-modules
./mvnw test -pl dubbo-test-spring
./mvnw test
ls -la dubbo-config/dubbo-config-api/target/surefire-reports
cat dubbo-config/dubbo-config-api/target/surefire-reports/TEST-org.apache.dubbo.config.AbstractConfigTest.xml
cat dubbo-config/dubbo-config-api/target/surefire-reports/TEST-org.apache.dubbo.config.ConfigCenterConfigTest.xml
open "pom.xml"
search_file maven-surefire-plugin pom.xml
goto 257
goto 347
goto 799
edit '<configuration>
            <!-- Activate the use of TCP to transmit events to the plugin to fix Corrupted STDOUT issue -->
            <forkNode implementation="org.apache.maven.plugin.surefire.extensions.SurefireForkNodeFactory" />
          </configuration>' '<configuration>
            <!-- Activate the use of TCP to transmit events to the plugin to fix Corrupted STDOUT issue -->
            <forkNode implementation="org.apache.maven.plugin.surefire.extensions.SurefireForkNodeFactory" />
            <argLine>-Xmx2048m -Xms512m</argLine>
          </configuration>' False
./mvnw clean install -Pskip-spotless -Dmaven.test.skip=true -Dcheckstyle.skip=true -Dcheckstyle_unix.skip=true -Drat.skip=true
./mvnw test
ls -la dubbo-config/dubbo-config-spring/target/surefire-reports
cat dubbo-config/dubbo-config-spring/target/surefire-reports/TEST-org.apache.dubbo.config.spring.ConfigTest.xml
cat dubbo-config/dubbo-config-spring/target/surefire-reports/TEST-org.apache.dubbo.config.spring.ServiceBeanTest.xml
cat dubbo-config/dubbo-config-spring/target/surefire-reports/TEST-org.apache.dubbo.config.spring.beans.factory.annotation.ReferenceAnnotationBeanPostProcessorTest.xml

