ls -la
ls -la .github/workflows
open ".github/workflows/release.yml"
open ".github/workflows/release-maven-prepare.yml"
open "pom.xml"
search_file '<build>' pom.xml
goto 477
search_file '<plugin>' pom.xml
search_file maven-surefire-plugin pom.xml
goto 1543
ls -la
ls -la mvnw*
ls -la .mvn
apt-get update && apt-get install -y maven
mvn --version
mvn clean install
mvn clean install -DskipTests
