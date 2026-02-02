ls -a
ls -a .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y openjdk-17-jdk
apt-get install -y maven
./mvnw -B clean test -Prelease
mvn wrapper:wrapper
./mvnw -B clean test -Prelease
