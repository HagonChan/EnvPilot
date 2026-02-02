ls -la
ls -la .github/workflows
open ".github/workflows/continuous-integration-workflow.yml"
open "build.gradle"
open "gradle/wrapper/gradle-wrapper.properties"
apt-get update && apt-get install -y git openjdk-17-jdk
apt-get install -y git openjdk-17-jdk
java -version
./gradlew --version

