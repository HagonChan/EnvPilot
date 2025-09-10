ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "pom.xml"
mvn clean verify -B
apt-get update && apt-get install -y maven
mvn clean verify -B
cat /etc/resolv.conf
echo "nameserver 8.8.8.8" > /etc/resolv.conf && echo "nameserver 8.8.4.4" >> /etc/resolv.conf
mvn clean verify -B
