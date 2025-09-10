ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "pom.xml"
apt-get install -y openjdk-17-jdk
java -version
apt-get install -y maven
mvn -version
./mvnw -B clean test -Prelease
mvn -B clean test -Prelease
ls -la shenyu-admin/target/surefire-reports
open "shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.controller.ApiControllerTest.xml"
open "shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.service.register.ShenyuClientRegisterDubboServiceImplTest.xml"
mvn -B clean test -Prelease -X
mvn -B clean test -Prelease -e
mvn -B clean install -DskipTests -Prelease
mvn -B test -Prelease -pl shenyu-admin
open "shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.mapper.ProxySelectorMapperTest.xml"
find_file proxy-selector-sqlmap.xml
open "/testbed/shenyu-admin/src/main/resources/mappers/proxy-selector-sqlmap.xml"
edit 'SELECT true
        FROM proxy_selector
        WHERE id = #{id} LIMIT 1' 'SELECT true
        FROM proxy_selector
        WHERE id = #{id}'
mvn -B clean test -Prelease
