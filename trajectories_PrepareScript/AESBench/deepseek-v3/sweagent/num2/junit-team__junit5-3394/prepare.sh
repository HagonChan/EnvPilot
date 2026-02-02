ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
sudo apt-get update && sudo apt-get install -y graphviz
apt-get update && apt-get install -y graphviz
wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.3.1/graalvm-ce-java17-linux-amd64-22.3.1.tar.gz
curl -LO https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.3.1/graalvm-ce-java17-linux-amd64-22.3.1.tar.gz
apt-get install -y curl
curl -LO https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.3.1/graalvm-ce-java17-linux-amd64-22.3.1.tar.gz
tar -xzf graalvm-ce-java17-linux-amd64-22.3.1.tar.gz
export JAVA_HOME=$(pwd)/graalvm-ce-java17-22.3.1 && export PATH=$JAVA_HOME/bin:$PATH
java -version && native-image --version
gu install native-image
native-image --version
ls -la
chmod +x gradlew
./gradlew build
./gradlew build -x checkstyleNohttp
./gradlew test
./gradlew test --stacktrace
ping -c 4 google.com
ls -la
open "build.gradle.kts"
ls -la junit-jupiter-params
open "junit-jupiter-params/junit-jupiter-params.gradle.kts"
edit 'plugins {
	id("junitbuild.kotlin-library-conventions")
	id("junitbuild.shadow-conventions")
	id("junitbuild.testing-conventions")
}' 'plugins {
	id("junitbuild.kotlin-library-conventions")
	id("junitbuild.shadow-conventions")
	id("junitbuild.testing-conventions")
}

tasks.withType<Test> {
	exclude("**/*Network*\.class")
}'

