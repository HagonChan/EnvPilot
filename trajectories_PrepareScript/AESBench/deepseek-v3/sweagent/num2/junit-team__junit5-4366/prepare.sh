ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open ".github/workflows/cross-version.yml"
open "README.md"
sudo apt update && sudo apt install -y openjdk-21-jdk
apt update && apt install -y openjdk-21-jdk
java -version
./gradlew build
