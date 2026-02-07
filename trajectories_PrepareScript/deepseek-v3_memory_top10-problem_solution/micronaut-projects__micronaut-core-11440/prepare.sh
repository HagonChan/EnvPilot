ls -la
ls -la .github/workflows
open ".github/workflows/gradle.yml"
sudo apt-get update && sudo apt-get install -y openjdk-17-jdk openjdk-21-jdk gradle
apt-get update && apt-get install -y openjdk-17-jdk openjdk-21-jdk gradle
java -version && javac -version && gradle --version
ls -la
open "gradle/wrapper/gradle-wrapper.properties"
./gradlew check --no-daemon --continue
open "test-suite-http-server-tck-netty/build/reports/tests/test/index.html"
open "test-suite-http2-server-tck-netty/build/reports/tests/test/index.html"
./gradlew :test-suite-http-server-tck-netty:test --no-daemon --continue
open "test-suite-http-server-tck-netty/build/reports/tests/test/classes/Gradle%2320Test%2320Executor%232027.html"
