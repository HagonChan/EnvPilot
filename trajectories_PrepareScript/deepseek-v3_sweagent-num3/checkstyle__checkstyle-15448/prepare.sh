ls -la
ls -la .github/workflows
open ".github/workflows/release.yml"
open ".github/workflows/release-maven-perform.yml"
open "./.ci/release-maven-perform.sh"
open "pom.xml"
search_file '<plugin>' pom.xml
search_file '<artifactId>maven-surefire-plugin</artifactId>' pom.xml
goto 1543
search_file '<artifactId>maven-failsafe-plugin</artifactId>' pom.xml
goto 1516
mvn --version
sudo apt-get update && sudo apt-get install -y maven
which mvn
find / -name mvn -type f 2>/dev/null
ls -la
ls -la .mvn/wrapper
ls -la Makefile
open "README.md"
