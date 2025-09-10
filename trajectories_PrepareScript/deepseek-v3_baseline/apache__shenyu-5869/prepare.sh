ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "pom.xml"
java -version
apt-get update && apt-get install -y openjdk-17-jdk
java -version
./mvnw -B clean test -Prelease
ls -la mvnw*
ls -la .mvn/wrapper
wget -P .mvn/wrapper https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar -O .mvn/wrapper/maven-wrapper.jar
apt-get install -y wget
wget -P .mvn/wrapper https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar -O .mvn/wrapper/maven-wrapper.jar
ls -la .mvn/wrapper
./mvnw -B clean test -Prelease
ls -la /home/shenyu/shenyu-admin/target/surefire-reports
cat /home/shenyu/shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.controller.ApiControllerTest.xml
cat /home/shenyu/shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.service.register.ShenyuClientRegisterDubboServiceImplTest.xml
grep -l "FAILED" /home/shenyu/shenyu-admin/target/surefire-reports/*.txt
grep -l "ERROR" /home/shenyu/shenyu-admin/target/surefire-reports/*.txt
cat /home/shenyu/shenyu-admin/target/surefire-reports/org.apache.shenyu.admin.mapper.ProxySelectorMapperTest.txt
open "/home/shenyu/shenyu-admin/target/classes/mappers/proxy-selector-sqlmap.xml"
edit 'SELECT true
        FROM proxy_selector
        WHERE id = #{id} LIMIT 1' 'SELECT true
        FROM proxy_selector
        WHERE id = #{id} LIMIT 1'
edit 'SELECT true
        FROM proxy_selector
        WHERE id = #{id} LIMIT 1' 'SELECT true
        FROM proxy_selector
        WHERE id = #{id}' True
edit 'SELECT true
        FROM proxy_selector
        WHERE name = #{name} LIMIT 1' 'SELECT true
        FROM proxy_selector
        WHERE name = #{name}' True
./mvnw -B clean test -Prelease
cat /home/shenyu/shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.mapper.ProxySelectorMapperTest.txt
ls -la /home/shenyu/shenyu-admin/target/surefire-reports/
cat /home/shenyu/shenyu-admin/target/surefire-reports/org.apache.shenyu.admin.service.register.ShenyuClientRegisterDubboServiceImplTest.txt
cat /home/shenyu/shenyu-admin/target/surefire-reports/org.apache.shenyu.admin.service.register.ShenyuClientRegisterGrpcServiceImplTest.txt
grep -l "FAILED" /home/shenyu/shenyu-admin/target/surefire-reports/*.txt
grep -l "ERROR" /home/shenyu/shenyu-admin/target/surefire-reports/*.txt
cat /home/shenyu/shenyu-admin/target/surefire-reports/org.apache.shenyu.admin.mapper.ProxySelectorMapperTest.txt
open "/home/shenyu/shenyu-admin/target/classes/mappers/proxy-selector-sqlmap.xml"
edit 'SELECT true
        FROM proxy_selector
        WHERE id = #{id} LIMIT 1' 'SELECT true
        FROM proxy_selector
        WHERE id = #{id}' True
edit 'SELECT true
        FROM proxy_selector
        WHERE name = #{name} LIMIT 1' 'SELECT true
        FROM proxy_selector
        WHERE name = #{name}' True
./mvnw -B clean test -Prelease
cat /home/shenyu/shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.mapper.ProxySelectorMapperTest.txt
ls -la /home/shenyu/shenyu-admin/target/surefire-reports/
cat /home/shenyu/shenyu-admin/target/surefire-reports/org.apache.shenyu.admin.service.register.ShenyuClientRegisterDubboServiceImplTest.txt
cat /home/shenyu/shenyu-admin/target/surefire-reports/org.apache.shenyu.admin.service.register.ShenyuClientRegisterGrpcServiceImplTest.txt
grep -l "FAILED" /home/shenyu/shenyu-admin/target/surefire-reports/*.txt
grep -l "ERROR" /home/shenyu/shenyu-admin/target/surefire-reports/*.txt
cat /home/shenyu/shenyu-admin/target/surefire-reports/org.apache.shenyu.admin.mapper.ProxySelectorMapperTest.txt
open "/home/shenyu/shenyu-admin/target/classes/mappers/proxy-selector-sqlmap.xml"
edit 'SELECT true
        FROM proxy_selector
        WHERE id = #{id} LIMIT 1' 'SELECT true
        FROM proxy_selector
        WHERE id = #{id}' True
edit 'SELECT true
        FROM proxy_selector
        WHERE name = #{name} LIMIT 1' 'SELECT true
        FROM proxy_selector
        WHERE name = #{name}' True
./mvnw -B clean test -Prelease
ls -la /home/shenyu/shenyu-admin/target/surefire-reports

