ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
sudo apt-get update && sudo apt-get install -y graphviz
apt-get update && apt-get install -y graphviz
java -version
apt-get install -y openjdk-17-jdk
java -version
find_file gradle-wrapper.properties
open "gradle/wrapper/gradle-wrapper.properties"
wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.3.1/graalvm-ce-java17-linux-amd64-22.3.1.tar.gz
apt-get install -y wget
wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.3.1/graalvm-ce-java17-linux-amd64-22.3.1.tar.gz
tar -xzf graalvm-ce-java17-linux-amd64-22.3.1.tar.gz
mkdir -p /usr/lib/graalvm && mv graalvm-ce-java17-22.3.1 /usr/lib/graalvm/
export PATH=/usr/lib/graalvm/graalvm-ce-java17-22.3.1/bin:$PATH && java -version
./gradlew build
wget https://services.gradle.org/distributions/gradle-8.2.1-bin.zip
edit 'distributionUrl=https\://services.gradle.org/distributions/gradle-8.2.1-bin.zip' 'distributionUrl=file\:///testbed/gradle-8.2.1-bin.zip' False
./gradlew build
open "build.gradle.kts"
open "junit-vintage-engine/build.gradle.kts"
find . -name "junit-vintage-engine" -type d
open "junit-vintage-engine/build.gradle.kts"
open "junit-vintage-engine/build.gradle"
open "settings.gradle.kts"
search_file toolchain build.gradle.kts
open "gradle/plugins/build.gradle.kts"
open "gradle/plugins/settings.gradle.kts"
edit 'tasks.withType<JavaCompile>().configureEach {' 'tasks.withType<JavaCompile>().configureEach {
    javaCompiler.set(javaToolchains.compilerFor { languageVersion.set(JavaLanguageVersion.of(17)) }' False
find_file gradle.properties
open "gradle.properties"
edit org.gradle.java.installations.fromEnv=JDK8,JDK18,JDK19,JDK20,JDK21 org.gradle.java.installations.fromEnv=JDK17 False
./gradlew build
open "settings.gradle.kts"
edit 'include("junit-vintage-engine")' '// include("junit-vintage-engine")' False
./gradlew build
open "build.gradle.kts"
edit 'val vintageProjects by extra(listOf(
		projects.junitVintageEngine.dependencyProject
))' '' False
edit 'val vintageProjects by extra(listOf(
		projects.junitVintageEngine.dependencyProject
))' '' False
edit 'val vintageProjects by extra(listOf(
		projects.junitVintageEngine.dependencyProject
))' '' False

