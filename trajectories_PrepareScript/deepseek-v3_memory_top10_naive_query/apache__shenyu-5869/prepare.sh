ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y openjdk-17-jdk
java -version
apt-get install -y maven
mvn -version
./mvnw -B clean test -Prelease
mvn -B clean test -Prelease
ls -la shenyu-admin/target/surefire-reports
open "shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.controller.ApiControllerTest.xml"
open "shenyu-admin/target/surefire-reports/org.apache.shenyu.admin.service.register.ShenyuClientRegisterDubboServiceImplTest.txt"

