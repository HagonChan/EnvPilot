ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
apt-get update && apt-get install -y graphviz openjdk-17-jdk
open "gradle/wrapper/gradle-wrapper.properties"
./gradlew build
edit networkTimeout=10000 networkTimeout=30000 False
./gradlew build
mkdir -p gradle/wrapper/dists/gradle-8.2.1-bin/$(echo -n https://services.gradle.org/distributions/gradle-8.2.1-bin.zip | sha256sum | cut -d ' ' -f 1)
curl -L https://services.gradle.org/distributions/gradle-8.2.1-bin.zip -o gradle/wrapper/dists/gradle-8.2.1-bin/$(echo -n https://services.gradle.org/distributions/gradle-8.2.1-bin.zip | sha256sum | cut -d ' ' -f 1)/gradle-8.2.1-bin.zip
apt-get install -y curl
curl -L https://services.gradle.org/distributions/gradle-8.2.1-bin.zip -o gradle/wrapper/dists/gradle-8.2.1-bin/$(echo -n https://services.gradle.org/distributions/gradle-8.2.1-bin.zip | sha256sum | cut -d ' ' -f 1)/gradle-8.2.1-bin.zip
./gradlew build
unzip gradle/wrapper/dists/gradle-8.2.1-bin/$(echo -n https://services.gradle.org/distributions/gradle-8.2.1-bin.zip | sha256sum | cut -d ' ' -f 1)/gradle-8.2.1-bin.zip -d gradle/wrapper/dists/gradle-8.2.1-bin/$(echo -n https://services.gradle.org/distributions/gradle-8.2.1-bin.zip | sha256sum | cut -d ' ' -f 1)
apt-get install -y unzip
unzip gradle/wrapper/dists/gradle-8.2.1-bin/$(echo -n https://services.gradle.org/distributions/gradle-8.2.1-bin.zip | sha256sum | cut -d ' ' -f 1)/gradle-8.2.1-bin.zip -d gradle/wrapper/dists/gradle-8.2.1-bin/$(echo -n https://services.gradle.org/distributions/gradle-8.2.1-bin.zip | sha256sum | cut -d ' ' -f 1)
./gradlew build
export GRADLE_HOME=$(pwd)/gradle/wrapper/dists/gradle-8.2.1-bin/$(echo -n https://services.gradle.org/distributions/gradle-8.2.1-bin.zip | sha256sum | cut -d ' ' -f 1)/gradle-8.2.1 && ./gradlew build
gradle/wrapper/dists/gradle-8.2.1-bin/$(echo -n https://services.gradle.org/distributions/gradle-8.2.1-bin.zip | sha256sum | cut -d ' ' -f 1)/gradle-8.2.1/bin/gradle build
ls -la
open "gradle.properties"
edit org.gradle.java.installations.fromEnv=JDK8,JDK18,JDK19,JDK20,JDK21 org.gradle.java.installations.fromEnv=JDK17,JDK18,JDK19,JDK20,JDK21 False
gradle/wrapper/dists/gradle-8.2.1-bin/$(echo -n https://services.gradle.org/distributions/gradle-8.2.1-bin.zip | sha256sum | cut -d ' ' -f 1)/gradle-8.2.1/bin/gradle build
edit org.gradle.kotlin.dsl.allWarningsAsErrors=true 'org.gradle.kotlin.dsl.allWarningsAsErrors=true
org.gradle.java.installations.auto-detect=false' False
gradle/wrapper/dists/gradle-8.2.1-bin/$(echo -n https://services.gradle.org/distributions/gradle-8.2.1-bin.zip | sha256sum | cut -d ' ' -f 1)/gradle-8.2.1/bin/gradle build
export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which javac)))) && echo $JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && gradle/wrapper/dists/gradle-8.2.1-bin/$(echo -n https://services.gradle.org/distributions/gradle-8.2.1-bin.zip | sha256sum | cut -d ' ' -f 1)/gradle-8.2.1/bin/gradle build
ls -la
open "build.gradle.kts"
insert 'java {
    toolchain {
        languageVersion.set(JavaLanguageVersion.of(17))
        vendor.set(JvmVendorSpec.ADOPTIUM)
    }
}' 11
gradle/wrapper/dists/gradle-8.2.1-bin/$(echo -n https://services.gradle.org/distributions/gradle-8.2.1-bin.zip | sha256sum | cut -d ' ' -f 1)/gradle-8.2.1/bin/gradle build
edit 'java {
    toolchain {
        languageVersion.set(JavaLanguageVersion.of(17))
        vendor.set(JvmVendorSpec.ADOPTIUM)
    }
}' 'configure<JavaPluginExtension> {
    toolchain {
        languageVersion.set(JavaLanguageVersion.of(17))
        vendor.set(JvmVendorSpec.ADOPTIUM)
    }
}' False
gradle/wrapper/dists/gradle-8.2.1-bin/$(echo -n https://services.gradle.org/distributions/gradle-8.2.1-bin.zip | sha256sum | cut -d ' ' -f 1)/gradle-8.2.1/bin/gradle build
edit 'id("junitbuild.temp-maven-repo")
}' 'id("junitbuild.temp-maven-repo")
id("java")
}' False
gradle/wrapper/dists/gradle-8.2.1-bin/$(echo -n https://services.gradle.org/distributions/gradle-8.2.1-bin.zip | sha256sum | cut -d ' ' -f 1)/gradle-8.2.1/bin/gradle build
edit 'configure<JavaPluginExtension> {
    toolchain {
        languageVersion.set(JavaLanguageVersion.of(17))
        vendor.set(JvmVendorSpec.ADOPTIUM)
    }
}' 'java {
    sourceCompatibility = JavaVersion.VERSION_17
    targetCompatibility = JavaVersion.VERSION_17
}' False
gradle/wrapper/dists/gradle-8.2.1-bin/$(echo -n https://services.gradle.org/distributions/gradle-8.2.1-bin.zip | sha256sum | cut -d ' ' -f 1)/gradle-8.2.1/bin/gradle build
edit org.gradle.java.installations.fromEnv=JDK17,JDK18,JDK19,JDK20,JDK21 'org.gradle.java.installations.auto-detect=false
org.gradle.java.installations.fromEnv=JDK17' False
open "gradle.properties"
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 && gradle/wrapper/dists/gradle-8.2.1-bin/$(echo -n https://services.gradle.org/distributions/gradle-8.2.1-bin.zip | sha256sum | cut -d ' ' -f 1)/gradle-8.2.1/bin/gradle build
open "build.gradle.kts"
edit org.gradle.java.installations.auto-detect=false 'org.gradle.java.installations.auto-detect=false
org.gradle.java.installations.auto-download=false' False
edit org.gradle.java.installations.auto-detect=false 'org.gradle.java.installations.auto-detect=false
org.gradle.java.installations.auto-download=false' False
edit org.gradle.java.installations.auto-detect=false 'org.gradle.java.installations.auto-detect=false
org.gradle.java.installations.auto-download=false' False

