ls
open "README.md"
find_file '.github/workflows/*.yml'
java -version
apt-get update && apt-get install -y openjdk-11-jdk
mvn -version
apt-get install -y maven
java -version && mvn -version
mvn package
mvn package -DskipTests
