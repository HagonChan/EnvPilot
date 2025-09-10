ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
open ".github/actions/main-build/action.yml"
open ".github/actions/setup-test-jdk/action.yml"
java -version
apt-get update && apt-get install -y openjdk-21-jdk
java -version
find_file gradle-wrapper.properties
open "gradle/wrapper/gradle-wrapper.properties"
./gradlew build
apt-get install -y openjdk-8-jdk
./gradlew build
