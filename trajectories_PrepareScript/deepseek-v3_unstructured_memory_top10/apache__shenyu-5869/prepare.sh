ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
java -version
apt-get update && apt-get install -y openjdk-17-jdk
java -version
ls -la
./mvnw -B clean test -Prelease
ls -la .mvn
ls -la .mvn/wrapper
wget -P .mvn/wrapper https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar -O .mvn/wrapper/maven-wrapper.jar
apt-get update && apt-get install -y wget
wget -P .mvn/wrapper https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar -O .mvn/wrapper/maven-wrapper.jar
./mvnw -B clean test -Prelease
ls -la shenyu-admin/target/surefire-reports
open "shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.controller.ApiControllerTest.xml"
open "shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.service.register.ShenyuClientRegisterServiceImplTest.xml"
open "shenyu-admin/target/surefire-reports/org.apache.shenyu.admin.service.register.ShenyuClientRegisterServiceImplTest.txt"
open "shenyu-admin/target/surefire-reports/2025-07-26T18-45-36_361.dumpstream"
cat shenyu-admin/target/surefire-reports/org.apache.shenyu.admin.service.register.ShenyuClientRegisterServiceImplTest-output.txt
./mvnw -B test -Dtest=org.apache.shenyu.admin.service.register.ShenyuClientRegisterServiceImplTest -Dmaven.surefire.debug
./mvnw -B test -pl shenyu-admin -Dmaven.surefire.debug
./mvnw -B clean install -DskipTests
./mvnw -B test -pl shenyu-admin
open "shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.mapper.ProxySelectorMapperTest.xml"
find_file proxy-selector-sqlmap.xml
open "/testbed/shenyu-admin/src/main/resources/mappers/proxy-selector-sqlmap.xml"
edit 'SELECT true
        FROM proxy_selector
        WHERE id = #{id} LIMIT 1' 'SELECT true
        FROM proxy_selector
        WHERE id = #{id}'
./mvnw -B clean install -DskipTests
./mvnw -B test -pl shenyu-admin
