
find_file '*.yml'
open "/testbed/.github/workflows/scorecards-analysis.yml"
open "/testbed/.github/workflows/codeql-analysis.yml"
open "/testbed/.github/workflows/maven.yml"
open "/testbed/.github/workflows/coverage.yml"
find_file pom.xml
open "/testbed/pom.xml"
mvn install
apt update && apt install maven -y
mvn install
mvn test
