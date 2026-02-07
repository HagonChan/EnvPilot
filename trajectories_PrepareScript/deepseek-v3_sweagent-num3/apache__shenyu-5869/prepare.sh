ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
java -version
apt update && apt install -y openjdk-17-jdk
java -version
./mvnw -B clean test -Prelease
ls -la
ls -la .mvn/wrapper
curl -o .mvn/wrapper/maven-wrapper.jar https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar
apt update && apt install -y curl
curl -o .mvn/wrapper/maven-wrapper.jar https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar
curl -o .mvn/wrapper/MavenWrapperDownloader.java https://raw.githubusercontent.com/takari/maven-wrapper/0.5.6/src/main/java/io/takari/maven/wrapper/MavenWrapperDownloader.java
ls -la .mvn/wrapper
./mvnw -B clean test -Prelease
