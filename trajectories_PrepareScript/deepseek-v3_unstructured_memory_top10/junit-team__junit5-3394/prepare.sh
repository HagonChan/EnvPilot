ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
sudo apt-get update && sudo apt-get install -y graphviz
apt-get update && apt-get install -y graphviz
apt-get install -y wget unzip
wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.3.2/graalvm-ce-java17-linux-amd64-22.3.2.tar.gz
tar -xzf graalvm-ce-java17-linux-amd64-22.3.2.tar.gz
export JAVA_HOME=/testbed/graalvm-ce-java17-22.3.2 && export PATH=$JAVA_HOME/bin:$PATH
java -version
ls -la
./gradlew build
./gradlew build -x checkstyleNohttp
cat platform-tooling-support-tests/build/reports/tests/test/index.html
./gradlew :platform-tooling-support-tests:test --tests "platform.tooling.support.tests.GraalVmStarterTests" --info
open "platform-tooling-support-tests/src/test/java/platform/tooling/support/tests/GraalVmStarterTests.java"
/testbed/graalvm-ce-java17-22.3.2/bin/native-image --version
cd graalvm-starter && ../gradlew nativeTest --no-daemon --stacktrace
ls -la
ls -la ..
open "settings.gradle.kts"
./gradlew build -x :platform-tooling-support-tests:test
./gradlew build -x :platform-tooling-support-tests:test -x checkstyleNohttp
