ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "pom.xml"
apt-get update && apt-get install -y openjdk-17-jdk maven git curl
java -version && mvn --version
./mvnw -B clean test -Prelease
ls -la /testbed/shenyu-admin/target/surefire-reports
cat /testbed/shenyu-admin/target/surefire-reports/TEST-org.apache.shenyu.admin.controller.ApiControllerTest.xml
grep -l "failures="[1-9]" /testbed/shenyu-admin/target/surefire-reports/*.xml || grep -l "errors="[1-9]" /testbed/shenyu-admin/target/surefire-reports/*.xml
./mvnw -B clean test -Prelease -X
./mvnw -B clean test -Prelease -e
cat /testbed/shenyu-admin/target/surefire-reports/*.txt
grep -i "error\|warn" /testbed/shenyu-admin/target/surefire-reports/*.txt
grep -i "plugin\|dependency" /testbed/shenyu-admin/target/surefire-reports/*.txt
./mvnw -B clean test -Prelease -rf :shenyu-admin
search_file '<repositories>' pom.xml
find /testbed -name "settings.xml" -o -name "parent.pom"
./mvnw -B clean install -Prelease
grep -l "failures="[1-9]" /testbed/shenyu-admin/target/surefire-reports/*.xml || grep -l "errors="[1-9]" /testbed/shenyu-admin/target/surefire-reports/*.xml

