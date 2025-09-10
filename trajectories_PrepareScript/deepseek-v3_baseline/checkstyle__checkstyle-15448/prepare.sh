ls -la
ls -la .github/workflows
open ".github/workflows/regression-report.yml"
open ".github/workflows/checker-framework.yml"
open "pom.xml"
sudo apt update && sudo apt install -y openjdk-11-jdk groovy
apt update && apt install -y openjdk-11-jdk groovy
apt install -y openjdk-11-jdk groovy
java -version && groovy --version
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && groovy --version
mvn clean install
apt install -y maven
mvn --version
mvn clean install
ls -la target/surefire-reports
open "target/surefire-reports/TEST-com.puppycrawl.tools.checkstyle.MainTest.xml"
find_file MainTest.java
open "src/test/java/com/puppycrawl/tools/checkstyle/MainTest.java"
search_file testExistingTargetFileButWithoutReadAccess src/test/java/com/puppycrawl/tools/checkstyle/MainTest.java
goto 329
find_file Main.java
open "src/main/java/com/puppycrawl/tools/checkstyle/Main.java"
search_file file.setReadable src/main/java/com/puppycrawl/tools/checkstyle/Main.java
search_file file.canRead src/main/java/com/puppycrawl/tools/checkstyle/Main.java
find_file Checker.java
open "src/main/java/com/puppycrawl/tools/checkstyle/Checker.java"
find_file FileText.java
open "src/main/java/com/puppycrawl/tools/checkstyle/api/FileText.java"
mvn clean install
