

find_file '*.yml'
open "/testbed/.github/workflows/main_push.yml"
find_file pom.xml
open "/testbed/pom.xml"
search_file '<dependencies>' /testbed/pom.xml
goto 239
mvn -v
apt-get update && apt-get install maven -y
mvn deploy
apt-get install openjdk-21-jdk -y
mvn deploy
mvn test
