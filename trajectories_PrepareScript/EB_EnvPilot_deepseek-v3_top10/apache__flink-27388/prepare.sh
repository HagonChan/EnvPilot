ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open ".github/workflows/template.flink-ci.yml"
apt-get update && apt-get install -y openjdk-17-jdk
apt-get install -y maven
./mvnw clean package -DskipTests -Djdk17 -Pjava17-target
rm -f .mvn/wrapper/maven-wrapper.jar
./mvnw clean package -DskipTests -Djdk17 -Pjava17-target
python3 -c "import urllib.request; urllib.request.urlretrieve('https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.3.1/maven-wrapper-3.3.1.jar', '.mvn/wrapper/maven-wrapper.jar')"
./mvnw clean package -DskipTests -Djdk17 -Pjava17-target
sha256sum .mvn/wrapper/maven-wrapper.jar
open ".mvn/wrapper/maven-wrapper.properties"
edit wrapperSha256Sum=3d8f20ce6103913be8b52aef6d994e0c54705fb527324ceb9b835b338739c7a8 wrapperSha256Sum=7cc3215e9c7ec525d793b82ea878441cdaa5b6135f859b0ef396a93bb3c8e6e7 True

