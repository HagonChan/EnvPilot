ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "README.md"
open "Makefile"
apt-get update && apt-get install -y gcc g++ cmake make libssl-dev libyaml-dev
chmod +x ./mvnw && ./mvnw -B clean test -Prelease
apt-get install -y openjdk-17-jdk
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && echo $JAVA_HOME
./mvnw -B clean test -Prelease
ls -la
wget -P .mvn/wrapper https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar
apt-get install -y wget
wget -P .mvn/wrapper https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar
./mvnw -B clean test -Prelease
ls -la shenyu-admin/target/surefire-reports
open "shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.controller.ApiControllerTest.xml"
open "shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.service.register.ShenyuClientRegisterDubboServiceImplTest.xml"
ls -la shenyu-admin/target/surefire-reports/*.txt
open "shenyu-admin/target/surefire-reports/org.apache.shenyu.admin.aspect.DataPermissionAspectTest.txt"

