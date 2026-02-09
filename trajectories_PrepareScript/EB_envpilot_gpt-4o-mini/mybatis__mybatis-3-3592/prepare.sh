
ls -R
open "pom.xml"
apt-get update
apt-get install -y openjdk-17-jdk maven
./mvnw install --batch-mode --no-transfer-progress --show-version -D"license.skip=true"
