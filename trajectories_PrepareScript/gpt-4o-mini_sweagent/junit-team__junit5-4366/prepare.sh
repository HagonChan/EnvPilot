
find_file '*.yml'
open "/testbed/.github/workflows/main.yml"
apt update
apt search graalvm
wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-21.3.0/graalvm-ce-linux-amd64-21.3.0.tar.gz
curl -LO https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-21.3.0/graalvm-ce-linux-amd64-21.3.0.tar.gz
find_file requirements.txt
find_file setup.py
find_file README.md
open "/testbed/README.md"
apt search openjdk
apt install openjdk-25-jdk
apt install -y openjdk-25-jdk
./gradlew build
find_file gradle.properties
open "/testbed/gradle.properties"
edit org.gradle.java.installations.fromEnv=JDK8,JDK18,JDK19,JDK20,JDK21,JDK22,JDK23,JDK24 org.gradle.java.installations.fromEnv=JDK8,JDK18,JDK19,JDK20,JDK22,JDK23,JDK24 False
./gradlew build
find_file build.gradle
find_file 'gradle*'
open "/testbed/gradle/wrapper/gradle-wrapper.properties"
open "/testbed/platform-tooling-support-tests/projects/reflection-tests/gradle.properties"
open "/testbed/platform-tooling-support-tests/projects/jupiter-starter/gradle.properties"
apt search openjdk-8
apt install -y openjdk-8-jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && export PATH=$JAVA_HOME/bin:$PATH
./gradlew build
find_file build.gradle platform-tooling-support-tests/projects/
open "/testbed/platform-tooling-support-tests/projects/reflection-tests/gradle.properties"
create platform-tooling-support-tests/projects/reflection-tests/settings.gradle
insert 'java {
    toolchain {
        languageVersion = JavaLanguageVersion.of(8)
    }
}' 1
./gradlew build
JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 ./gradlew build
open "/testbed/gradle.properties"
edit org.gradle.java.installations.fromEnv=JDK8,JDK18,JDK19,JDK20,JDK22,JDK23,JDK24 org.gradle.java.installations.fromEnv=JDK8 True
./gradlew build
find_file '*'
open "/testbed/gradle/plugins/common/build.gradle.kts"
open "/testbed/gradle/plugins/build.gradle.kts"
open "/testbed/junit-jupiter/junit-jupiter.gradle.kts"
open "/testbed/junit-jupiter/src/module/org.junit.jupiter/module-info.java"
JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 ./gradlew test
insert 'org.gradle.java.installations.allowIncompleteToolchain=true
' 1
JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 ./gradlew test
search_dir toolchain /testbed
open "/testbed/gradle/plugins/common/src/main/kotlin/junitbuild/java-toolchain-conventions.gradle.kts"
open "/testbed/gradle/plugins/common/src/main/kotlin/junitbuild.base-conventions.gradle.kts"
open "/testbed/platform-tooling-support-tests/projects/gradle-missing-engine/build.gradle.kts"

