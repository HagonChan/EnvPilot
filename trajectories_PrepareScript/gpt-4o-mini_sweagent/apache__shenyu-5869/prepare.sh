find_file '*.yml' .github/workflows
open ".github/workflows/ci.yml"
mvn -v
apt update
apt install maven -y
find_file mvnw
./mvnw -B clean test -Prelease
find_file '*' .mvn/wrapper
curl -o .mvn/wrapper/maven-wrapper.jar https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar
wget -O .mvn/wrapper/maven-wrapper.jar https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar
scroll_down
mvn -B clean test -Prelease
java -version
apt install openjdk-17-jdk -y
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && update-alternatives --set java /usr/lib/jvm/java-17-openjdk-amd64/bin/java
mvn -B clean test -Prelease
ls shenyu-admin/target/surefire-reports
open "shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.aspect.DataPermissionAspectTest.xml"
open "shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.config.DataBaseConfigurationTest.xml"
open "shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.controller.ApiControllerTest.xml"
open "shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.controller.ConfigControllerTest.xml"
open "shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.controller.RuleControllerTest.xml"
open "shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.controller.PluginControllerTest.xml"
open "shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.controller.ServiceControllerTest.xml"
ls shenyu-admin/target/surefire-reports
