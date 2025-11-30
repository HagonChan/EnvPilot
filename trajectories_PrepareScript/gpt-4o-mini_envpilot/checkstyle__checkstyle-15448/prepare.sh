ls -la
open "azure-pipelines.yml"
apt-get update && apt-get install -y openjdk-11-jdk maven
mvn install
ls -la target/surefire-reports
open "target/surefire-reports/TEST-com.puppycrawl.tools.checkstyle.MainTest.xml"
mvn -e test
open "pom.xml"
search_file jacoco pom.xml
mvn test -Djacoco.skip=false
mvn test -DargLine="-javaagent:/path/to/jacocoagent.jar"
