find_file '*.yml' .
open "/testbed/.github/workflows/release.yml"
open "/testbed/azure-pipelines.yml"
find_file validation.sh .ci
open "/testbed/.ci/validation.sh"
find_file pom.xml .
open "/testbed/pom.xml"
search_file '<dependencies>' /testbed/pom.xml
goto 275
apt update
apt install maven -y
mvn clean
mvn verify

