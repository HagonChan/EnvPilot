
ls -R
open "build.gradle.kts"
find_file gradle-wrapper.properties
open "gradle/wrapper/gradle-wrapper.properties"
edit 'distributionUrl=https\://services.gradle.org/distributions/gradle-8.2.1-bin.zip' 'distributionUrl=https\://services.gradle.org/distributions/gradle-7.6.3-bin.zip'
apt-get update && apt-get install -y openjdk-17-jdk ca-certificates curl unzip
./gradlew build
curl -L -o gradle-7.6.3-bin.zip https://services.gradle.org/distributions/gradle-7.6.3-bin.zip
unzip gradle-7.6.3-bin.zip -d /opt/gradle
export GRADLE_HOME=/opt/gradle/gradle-7.6.3 && export PATH=$PATH:$GRADLE_HOME/bin
./gradlew build
/opt/gradle/gradle-7.6.3/bin/gradle build
open "gradle/plugins/build-parameters/build.gradle.kts"
edit 'defaultValue = ' 'defaultValue.set(' True
edit 'defaultValue.set(' 'defaultValue.set(' True
edit 'defaultValue.set(' 'defaultValue.set(' True
edit 'defaultValue.set(' 'defaultValue.set('

