ls -la
ls -la .github/workflows
open "pom.xml"
search_file '<build>' pom.xml
goto 477
open "README.md"
mvn clean install
apt-get update && apt-get install -y maven
mvn clean install
apt-get install -y openjdk-11-jdk
mvn clean install
