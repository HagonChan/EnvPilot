ls
open "build.gradle.kts"
open "gradle.properties"
apt-get update && apt-get install -y openjdk-21-jdk graphviz
java -version
./gradlew build
apt-get install -y openjdk-8-jdk
update-alternatives --list java
./gradlew build
