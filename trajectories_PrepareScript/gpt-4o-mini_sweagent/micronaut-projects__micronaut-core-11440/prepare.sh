ls -R
open "build.gradle"
open "README.md"
./gradlew publishToMavenLocal
java -version
apt update
apt install default-jdk -y
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
echo $JAVA_HOME
./gradlew publishToMavenLocal
apt update
apt install openjdk-17-jdk -y
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
echo $JAVA_HOME
./gradlew publishToMavenLocal
search_file test build.gradle
./gradlew test
open "http-client-jdk/build/reports/tests/test/index.html"
open "http-client-jdk/build/reports/tests/test/classes/io.micronaut.http.client.jdk.Http2Spec.html"
open "http-client-jdk/build/reports/tests/test/classes/io.micronaut.http.client.jdk.SslSelfSignedSpec.html"
