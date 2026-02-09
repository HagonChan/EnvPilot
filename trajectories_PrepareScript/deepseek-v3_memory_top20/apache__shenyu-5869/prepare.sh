ls -a
ls -a .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y openjdk-17-jdk maven
java -version && mvn -version
./mvnw -B clean test -Prelease
mkdir -p .mvn/wrapper && python3 -c "import urllib.request; urllib.request.urlretrieve('https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.3.1/maven-wrapper-3.3.1.jar', '.mvn/wrapper/maven-wrapper.jar')"
./mvnw -B clean test -Prelease
ls -l /testbed/shenyu-admin/target/surefire-reports
open "/testbed/shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.controller.ApiControllerTest.xml"
open "/testbed/shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.service.register.ShenyuClientRegisterDubboServiceImplTest.xml"
open "/testbed/shenyu-admin/target/surefire-reports/org.apache.shenyu.admin.service.register.ShenyuClientRegisterDubboServiceImplTest.txt"
ls -l /testbed/shenyu-admin/target/surefire-reports/*.dump*
open "/testbed/shenyu-admin/target/surefire-reports/2025-11-24T02-22-06_444.dumpstream"
./mvnw -B clean test -Prelease -X
find /testbed -name "*Test.java" | xargs grep -l "@Test" | xargs grep -l "fail("
open "/testbed/shenyu-plugin/shenyu-plugin-proxy/shenyu-plugin-rpc/shenyu-plugin-sofa/src/test/java/org/apache/shenyu/plugin/sofa/param/SofaBodyParamResolveServiceTest.java"
./mvnw -B clean install -Prelease -DskipTests
./mvnw -B test -Prelease -Dtest=org.apache.shenyu.admin.controller.ApiControllerTest
./mvnw -B test -Prelease -pl shenyu-admin -Dtest=org.apache.shenyu.admin.controller.ApiControllerTest
./mvnw -B test -Prelease -pl shenyu-plugin
./mvnw -B test -Prelease -pl shenyu-plugin/shenyu-plugin-proxy
./mvnw -B clean test -Prelease -DfailIfNoTests=false
ls -l /testbed/shenyu-admin/target/surefire-reports
open "/testbed/shenyu-admin/target/surefire-reports/2025-11-24T02-49-00_146.dumpstream"

