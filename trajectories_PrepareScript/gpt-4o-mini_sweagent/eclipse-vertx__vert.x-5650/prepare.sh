find_file '*.yml' .
open ".github/workflows/ci.yml"
find_file pom.xml .
open "pom.xml"
find_file 'README*' .
open "README.md"
mvn package
apt update
apt install maven -y
mvn package
ls target/surefire-reports
mvn test -Dvertx.httpPort=8888 -Dvertx.httpsPort=4044
