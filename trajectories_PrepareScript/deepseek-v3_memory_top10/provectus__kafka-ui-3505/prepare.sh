ls -la
ls -la .github/workflows
open ".github/workflows/backend.yml"
apt-get update && apt-get install -y openjdk-17-jdk
apt-get install -y maven
java -version && mvn -version
./mvnw -B -V -ntp verify
ls -la kafka-ui-api/target/surefire-reports
docker buildx version && qemu-system-x86_64 --version
apt-get update && apt-get install -y docker.io qemu-system-x86
docker --version && systemctl is-active docker
docker run hello-world
dockerd &
docker run hello-world
sudo dockerd &
dockerd &
./mvnw -B -V -ntp clean package -DskipTests
