ls -la
open "azure-pipelines.yml"
open "pom.xml"
mvn clean install -DskipTests
sudo apt update && sudo apt install -y maven
apt update && apt install -y maven
mvn --version
apt install -y openjdk-17-jdk
java --version
mvn clean install -DskipTests
open "pom.xml"
search_file maven-enforcer-plugin
goto 982
goto 1296
goto 1338
mvn clean install -DskipTests -X
mvn enforcer:enforce
mvn clean install -DskipTests -Denforcer.skip=true

