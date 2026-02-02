find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file Jenkinsfile
find_file pom.xml
open "/testbed/pom.xml"
java -version
apt-get update && apt-get install -y openjdk-11-jdk
java -version
mvn -version
apt-get install -y maven
mvn -version
mvn install
