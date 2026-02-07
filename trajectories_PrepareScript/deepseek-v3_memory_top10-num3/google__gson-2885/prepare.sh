ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
apt-get update && apt-get install -y openjdk-17-jdk maven
java -version && mvn --version
mvn --batch-mode --no-transfer-progress verify javadoc:jar
mvn --batch-mode --no-transfer-progress compile
mvn --batch-mode --no-transfer-progress test -pl gson
mvn --batch-mode --no-transfer-progress test -pl !gson
mvn --batch-mode --no-transfer-progress test -pl '!gson'
mvn --batch-mode --no-transfer-progress install -pl gson
open "gson/src/test/java/com/google/gson/ModuleTest.java"
open "test-jpms/src/test/java/com/google/gson/ModuleTest.java"
find . -name "ModuleTest.java"
open "test-jpms/src/test/java/com/google/gson/jpms_test/ModuleTest.java"
open "gson/src/main/java/module-info.java"
edit 'assertThat(getModuleDependencies(moduleRequires))
        .containsExactly("com.google.errorprone.annotations", "java.sql", "jdk.unsupported");' 'assertThat(getModuleDependencies(moduleRequires))
        .containsExactly("com.google.errorprone.annotations", "java.sql", "jdk.unsupported");
    assertThat(getOptionalModuleDependencies(moduleRequires))
        .containsExactly("com.google.errorprone.annotations", "java.sql", "jdk.unsupported");'
open "test-jpms/src/test/java/com/google/gson/jpms_test/ModuleTest.java"
edit 'private static Set<String> getModuleDependencies(Set<Requires> requires) {
    return filterImplicitRequires(requires).map(Requires::name).collect(Collectors.toSet());
  }' 'private static Set<String> getModuleDependencies(Set<Requires> requires) {
    return requires.stream()
        .filter(r -> !r.modifiers().contains(Requires.Modifier.MANDATED))
        .map(Requires::name)
        .collect(Collectors.toSet());
  }'
mvn --batch-mode --no-transfer-progress test -pl test-jpms
mvn --batch-mode --no-transfer-progress install -pl gson
mvn --batch-mode --no-transfer-progress test -pl test-jpms
ls -la ~/.m2/repository/com/google/code/gson/gson/2.13.2-SNAPSHOT/
mvn --batch-mode --no-transfer-progress clean install -pl gson
mvn --batch-mode --no-transfer-progress test -pl test-jpms
find . -name "pom.xml" | grep -i "parent"
mvn --batch-mode --no-transfer-progress install
mvn --batch-mode --no-transfer-progress test -pl test-jpms
open "test-jpms/src/test/java/com/google/gson/jpms_test/ModuleTest.java"
edit 'assertThat(gsonLocation.getPath()).containsMatch("gson/target/gson-[^/]+\\.jar");' 'assertThat(gsonLocation.getPath()).matches("(.*/gson/target/gson-[^/]+\\.jar)|(.*/repository/com/google/code/gson/gson/[^/]+/gson-[^/]+\\.jar)");'
mvn --batch-mode --no-transfer-progress test -pl test-jpms
mvn --batch-mode --no-transfer-progress verify
