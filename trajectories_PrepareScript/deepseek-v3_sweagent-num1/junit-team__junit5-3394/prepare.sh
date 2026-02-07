ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open "build.gradle.kts"
open "README.md"
java -version
sudo apt-get update && sudo apt-get install -y openjdk-17-jdk
apt-get update && apt-get install -y openjdk-17-jdk
java -version
./gradlew build
./gradlew -Ptesting.enableJaCoCo clean jacocoRootReport
