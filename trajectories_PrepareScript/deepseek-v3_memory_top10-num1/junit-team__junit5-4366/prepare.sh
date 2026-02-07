ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "README.md"
apt-get update && apt-get install -y build-essential cmake libssl-dev libyaml-dev
gcc --version && g++ --version && cmake --version
./gradlew build
apt-get install -y openjdk-21-jdk && export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
java -version && echo $JAVA_HOME
./gradlew build
apt-get install -y openjdk-8-jdk
update-alternatives --config java && java -version
ls /usr/lib/jvm/ && java -version
find_file build.gradle
find_file '**/build.gradle'
open "gradle/wrapper/gradle-wrapper.properties"
find_file settings.gradle
find_file Makefile
find_file CMakeLists.txt
open "README.md"
create gradle.properties
open "gradle.properties"
./gradlew build
