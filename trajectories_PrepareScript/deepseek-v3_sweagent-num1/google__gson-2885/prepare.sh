ls -la
ls -la .github/workflows
open ".github/workflows/build.yml"
open "pom.xml"
open "README.md"
mvn --version
apt-get update && apt-get install -y maven
mvn --version
apt-get install -y openjdk-8-jdk
update-alternatives --config java
ls /usr/lib/jvm
update-java-alternatives --set java-1.8.0-openjdk-amd64
java -version
mvn clean verify
open "pom.xml"
mvn clean verify -Dmaven.compiler.release=8 -Dmaven.compiler.testRelease=11
apt-get install -y --only-upgrade maven
mvn clean install -DskipTests
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && mvn clean verify
open "gson/pom.xml"
open "pom.xml"
search_file --add-exports pom.xml
search_file --add-exports gson/pom.xml
search_file maven-surefire-plugin pom.xml
goto 342
open "test-jpms/pom.xml"
open "test-graal-native-image/pom.xml"
open "gson/pom.xml"
find gson/src/test -name "*.java" -exec grep -l "--add-exports" {} \;
find gson/src/test -name "*.java" -exec grep -l "--add-exports" {} \;
find gson/src/test -name "*.java" -exec grep -l "add-exports" {} \;
mvn clean verify -X
create settings.xml
insert '<settings>
  <profiles>
    <profile>
      <id>disable-add-exports</id>
      <build>
        <plugins>
          <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-surefire-plugin</artifactId>
            <configuration>
              <argLine>-Djdk.module.illegalAccess=permit</argLine>
            </configuration>
          </plugin>
        </plugins>
      </build>
    </profile>
  </profiles>
  <activeProfiles>
    <activeProfile>disable-add-exports</activeProfile>
  </activeProfiles>
</settings>'
mvn clean verify -s settings.xml
mvn clean install -Dmaven.test.skip=true
open "pom.xml"
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && mvn clean verify
edit '</settings>' '</settings>'
edit '</settings>' '</settings>
' True
open "settings.xml"
rm settings.xml && mvn clean verify
create settings.xml
insert '<settings>
  <profiles>
    <profile>
      <id>skip-proguard</id>
      <build>
        <plugins>
          <plugin>
            <groupId>com.github.wvengen</groupId>
            <artifactId>proguard-maven-plugin</artifactId>
            <executions>
              <execution>
                <id>obfuscate-test-class</id>
                <phase>none</phase>
              </execution>
            </executions>
          </plugin>
        </plugins>
      </build>
    </profile>
  </profiles>
  <activeProfiles>
    <activeProfile>skip-proguard</activeProfile>
  </activeProfiles>
</settings>'
mvn clean verify -s settings.xml
rm settings.xml && mvn clean verify
mvn clean verify -DskipProguard
mvn clean verify -pl '!test-code-shrinking'
mvn help:effective-pom | grep -A 1 "<module>"

