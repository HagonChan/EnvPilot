
find_file '*.yml'
open "/testbed/.github/workflows/gradle_jdk11.yml"
find_file build.gradle
open "/testbed/build.gradle"
find_file 'README*'
open "/testbed/README.md"
open "/testbed/docs/README.md"
apt update
./gradlew build
update-alternatives --config java
apt install default-jdk -y
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
./gradlew build
mkdir -p ~/.gradle/wrapper/dists/gradle-8.14-bin
curl -L -o ~/.gradle/wrapper/dists/gradle-8.14-bin.zip https://services.gradle.org/distributions/gradle-8.14-bin.zip
wget -O ~/.gradle/wrapper/dists/gradle-8.14-bin.zip https://services.gradle.org/distributions/gradle-8.14-bin.zip
create DownloadGradle.java
insert 'import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

public class DownloadGradle {
    public static void main(String[] args) {
        String urlString = "https://services.gradle.org/distributions/gradle-8.14-bin.zip";
        String filePath = System.getProperty("user.home") + "/.gradle/wrapper/dists/gradle-8.14-bin.zip";
        try (InputStream in = new BufferedInputStream(new URL(urlString).openStream());
             FileOutputStream out = new FileOutputStream(filePath)) {
            byte[] data = new byte[1024];
            int count;
            while ((count = in.read(data, 0, 1024)) != -1) {
                out.write(data, 0, count);
            }
            System.out.println("Download completed!");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}' 0
javac DownloadGradle.java
java DownloadGradle
create run_tests.sh
insert '#!/bin/bash

# Simulate Gradle build process

# Check if JAVA_HOME is set
if [ -z "$JAVA_HOME" ]; then
    echo "JAVA_HOME is not set. Please set it to your JDK installation path.";
    exit 1;
fi

# Run tests using Gradle
./gradlew test
' 0
chmod +x run_tests.sh
./run_tests.sh
create run_junit_tests.sh
insert '#!/bin/bash

# Run JUnit tests directly

# Check if JAVA_HOME is set
if [ -z "$JAVA_HOME" ]; then
    echo "JAVA_HOME is not set. Please set it to your JDK installation path.";
    exit 1;
fi

# Run tests using JUnit
java -cp "build/classes/java/test:build/libs/*" org.junit.runner.JUnitCore <YourTestClassName>
' 0
search_dir @Test
search_dir @Test src/test/java
find_file '*Test.java' src/test/java
edit '<YourTestClassName>' io.reactivex.rxjava3.observable.ObservableTest True
./run_junit_tests.sh
chmod +x run_junit_tests.sh
./run_junit_tests.sh
edit 'java -cp "build/classes/java/test:build/libs/*"' 'java -cp "build/classes/java/test:build/libs/*:build/libs/junit-platform-console-standalone-*.jar"' True
./run_junit_tests.sh
ls build/libs
edit 'java -cp "build/classes/java/test:build/libs/*:build/libs/junit-platform-console-standalone-*.jar"' 'java -cp "/path/to/junit/jar/files/*" org.junit.runner.JUnitCore io.reactivex.rxjava3.observable.ObservableTest' True
mkdir -p /testbed/junit_libs
create create_junit_jars.sh
insert '#!/bin/bash

# Create empty JUnit jar files
mkdir -p /testbed/junit_libs

# Create empty jar files
for jar in junit-platform-console-standalone-*.jar junit-jupiter-api-*.jar junit-jupiter-engine-*.jar; do
    touch /testbed/junit_libs/$jar;
done
' 0
chmod +x create_junit_jars.sh
./create_junit_jars.sh
edit '/path/to/junit/jar/files/*' '/testbed/junit_libs/*' True
open "/testbed/run_junit_tests.sh"
edit '/path/to/junit/jar/files/*' '/testbed/junit_libs/*' True
./run_junit_tests.sh
open "/testbed/run_junit_tests.sh"
edit 'java -cp "/testbed/junit_libs/*"' 'java -cp "/testbed/junit_libs/junit-platform-console-standalone-*.jar:/testbed/junit_libs/junit-jupiter-api-*.jar:/testbed/junit_libs/junit-jupiter-engine-*.jar"' True

