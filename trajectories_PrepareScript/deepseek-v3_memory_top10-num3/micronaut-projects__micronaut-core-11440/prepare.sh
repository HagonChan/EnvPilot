ls -la
ls -la .github/workflows
open ".github/workflows/gradle.yml"
apt-get update && apt-get install -y openjdk-17-jdk openjdk-21-jdk
java -version && javac -version
chmod +x gradlew && ./gradlew check --no-daemon --continue
wget https://services.gradle.org/distributions/gradle-8.11.1-bin.zip -P /tmp
apt-get install -y wget
wget https://services.gradle.org/distributions/gradle-8.11.1-bin.zip -P /tmp
find_file gradle-wrapper.properties
open "gradle/wrapper/gradle-wrapper.properties"
edit 'distributionUrl=https\://services.gradle.org/distributions/gradle-8.11.1-bin.zip' 'distributionUrl=file\:///tmp/gradle-8.11.1-bin.zip' True
./gradlew check --no-daemon --continue
cat test-suite-http-server-tck-jdk/build/reports/tests/test/index.html
cat http-server-netty/build/reports/tests/test/index.html
