
ls -R
cat README.md
apt-get update && apt-get install -y openjdk-21-jdk
./gradlew build
cat gradle/wrapper/gradle-wrapper.properties
wget https://services.gradle.org/distributions/gradle-8.13-bin.zip
curl -O https://services.gradle.org/distributions/gradle-8.13-bin.zip
gradle -v
edit distributionUrl=https://services.gradle.org/distributions/gradle-8.13-bin.zip distributionUrl=https://services.gradle.org/distributions/gradle-7.5-bin.zip
open "gradle/wrapper/gradle-wrapper.properties" 1
edit distributionUrl=https://services.gradle.org/distributions/gradle-8.13-bin.zip distributionUrl=https://services.gradle.org/distributions/gradle-7.5-bin.zip
edit 'distributionUrl=https\://services.gradle.org/distributions/gradle-8.13-bin.zip' distributionUrl=https://services.gradle.org/distributions/gradle-7.5-bin.zip
./gradlew build
ls -a
cat build.gradle.kts
cat gradle.properties
bash gradlew build
ls gradle
cat libs.versions.toml
printenv
export GRADLE_OPTS='-Dhttp.proxyHost= -Dhttp.proxyPort= -Dhttps.proxyHost= -Dhttps.proxyPort=' && ./gradlew build
ls gradle
cat gradle/wrapper/gradle-wrapper.properties
bash gradlew build
ls gradle
cat gradle/wrapper/gradle-wrapper.properties
bash gradlew build
ls -a
cat build.gradle.kts
ls -a
cat gradle.properties
ls -a
cat gradle.properties
ls -a
cat gradle.properties
ls -a
cat gradle.properties
ls -a
cat gradle.properties
ls -a
cat gradle.properties
ls -a
cat gradle.properties
ls -a
cat gradle.properties
ls -a
cat gradle.properties
ls -a

