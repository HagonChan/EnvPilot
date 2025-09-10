ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y openjdk-17-jdk maven
apt-get install -y openjdk-17-jdk maven
java -version && mvn --version
./mvnw -B clean test -Prelease
mkdir -p .mvn/wrapper && curl -o .mvn/wrapper/maven-wrapper.jar https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.3.1/maven-wrapper-3.3.1.jar
apt-get install -y curl
mkdir -p .mvn/wrapper && curl -o .mvn/wrapper/maven-wrapper.jar https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.3.1/maven-wrapper-3.3.1.jar
./mvnw -B clean test -Prelease
./mvnw -B clean test -Prelease
ls -la /testbed/shenyu-admin/target/surefire-reports
cat /testbed/shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.controller.ApiControllerTest.xml
grep -l "failures="[1-9]"" /testbed/shenyu-admin/target/surefire-reports/*.xml
./mvnw -B clean test -Prelease -X
./mvnw -B clean test -Prelease -e
open "/testbed/shenyu-admin/pom.xml"
rm -rf ~/.m2/repository/org/apache/shenyu && ./mvnw -B clean test -Prelease
./mvnw -B clean install -Prelease -DskipTests
./mvnw -B clean install -Prelease -DskipTests
cd /testbed/shenyu-admin && ../mvnw test
cat /testbed/shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.mapper.ProxySelectorMapperTest.xml
find_file proxy-selector-sqlmap.xml /testbed/shenyu-admin
open "/testbed/shenyu-admin/src/main/resources/mappers/proxy-selector-sqlmap.xml"
edit 'SELECT true
        FROM proxy_selector
        WHERE id = #{id} LIMIT 1' 'SELECT true
        FROM proxy_selector
        WHERE id = #{id}'
cd /testbed && ./mvnw -B clean test -Prelease
