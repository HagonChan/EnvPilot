ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y openjdk-17-jdk
apt-get install -y maven
java -version && mvn -version
./mvnw -B clean test -Prelease
mkdir -p .mvn/wrapper && python3 -c "import urllib.request; urllib.request.urlretrieve('https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.3.1/maven-wrapper-3.3.1.jar', '.mvn/wrapper/maven-wrapper.jar')"
./mvnw -B clean test -Prelease
ls -la /testbed/shenyu-admin/target/surefire-reports/
open "/testbed/shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.controller.ApiControllerTest.xml"
open "/testbed/shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.service.register.ShenyuClientRegisterServiceImplTest.xml"
open "/testbed/shenyu-admin/target/surefire-reports/org.apache.shenyu.admin.service.register.ShenyuClientRegisterServiceImplTest.txt"
open "/testbed/shenyu-admin/target/surefire-reports/2026-01-30T13-01-27_230.dumpstream"

