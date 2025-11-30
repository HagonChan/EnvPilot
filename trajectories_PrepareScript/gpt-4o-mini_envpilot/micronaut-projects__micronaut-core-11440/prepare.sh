
ls -R
open "build.gradle"
find . -name gradle-wrapper.properties
open "gradle/wrapper/gradle-wrapper.properties"
java -version
apt-get update && apt-get install -y openjdk-17-jdk
java -version
./gradlew publishToMavenLocal
./gradlew test
open "http-client-jdk/build/reports/tests/test/index.html"
open "http-client-jdk/build/reports/tests/test/classes/io.micronaut.http.client.jdk.Http2Spec.html"
open "http-client-jdk/build/reports/tests/test/classes/io.micronaut.http.client.jdk.SslSelfSignedSpec.html"
