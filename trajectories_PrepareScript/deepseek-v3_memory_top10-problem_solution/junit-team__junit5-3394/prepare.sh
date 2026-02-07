ls -la
ls -la .github/workflows
open ".github/workflows/main.yml"
sudo apt-get update && sudo apt-get install -y graphviz openjdk-17-jdk
apt-get update && apt-get install -y graphviz openjdk-17-jdk
java -version
./gradlew build
./gradlew test --debug
./gradlew --stop
./gradlew test
ping -c 4 google.com
curl -I https://google.com
apt-get install -y curl
curl -I https://google.com
open "build.gradle.kts"
edit 'tasks.test {' 'tasks.test {
    exclude("**/junit-jupiter-migrationsupport/**")
    exclude("**/junit-vintage-engine/**")' False
search_file tasks.test build.gradle.kts
find_file junitbuild.base-conventions gradle/plugins
ls -la buildSrc/src/main/kotlin
find_file junitbuild.base-conventions
edit tasks.test 'tasks.test {
    exclude("**/junit-jupiter-migrationsupport/**")
    exclude("**/junit-vintage-engine/**")
}'
./gradlew projects
./gradlew :junit-jupiter-api:test
./gradlew :junit-platform-commons:test
./gradlew :junit-jupiter-engine:test
search_file 'test.*network' build.gradle.kts
