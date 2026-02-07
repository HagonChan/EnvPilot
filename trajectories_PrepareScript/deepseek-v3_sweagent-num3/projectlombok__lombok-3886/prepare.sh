ls -la
ls -la .github/workflows
open ".github/workflows/ant.yml"
ls -la
open "build.xml"
open "buildScripts/tests.ant.xml"
ls -la buildScripts
open "buildScripts/ivy.xml"
sudo apt-get update && sudo apt-get install -y ivy
apt-get update && apt-get install -y ivy
cd buildScripts && ivy -settings ivysettings.xml -dependencyfile ivy.xml -retrieve "[organisation]/[module]/[revision]/[type]s/[artifact]-[revision].[ext]" -confs "*" -sync
find / -name "ivy" -type f 2>/dev/null
ls -la /usr/share/java/ivy.jar
java -jar /usr/share/java/ivy.jar -settings ivysettings.xml -dependencyfile ivy.xml -retrieve "[organisation]/[module]/[revision]/[type]s/[artifact]-[revision].[ext]" -confs "*" -sync
java -jar /usr/share/java/ivy.jar -settings ivysettings.xml -ivy ivy.xml -retrieve "[organisation]/[module]/[revision]/[type]s/[artifact]-[revision].[ext]" -confs "*" -sync
cd .. && ant -noinput dist
apt-get install -y ant
ant -noinput dist
ls -la buildScripts
open "build.xml"
create buildScripts/info.ant.xml
insert '<project name="info">
  <description>Placeholder for info.ant.xml</description>
</project>' 0
ant -noinput dist
open "build.xml"
find . -name "*.sh" -o -name "*.bat" -o -name "*.py"
open "./test/manual/compileTests/runTests.sh"
find test -name "*.java" | head -5
javac -cp . test/manual/delombokAntTask/src/Test.java
apt-get install -y openjdk-11-jdk
java -version
javac -cp . test/manual/delombokAntTask/src/Test.java
find ~/.ivy2 -name "lombok*.jar"
java -jar /usr/share/java/ivy.jar -settings ivysettings.xml -ivy ivy.xml -retrieve "[organisation]/[module]/[revision]/[type]s/[artifact]-[revision].[ext]" -confs "*" -sync
wget https://projectlombok.org/downloads/lombok.jar -O lombok.jar
apt-get install -y wget
wget https://projectlombok.org/downloads/lombok.jar -O lombok.jar
javac -cp .:lombok.jar test/manual/delombokAntTask/src/Test.java
java -cp .:lombok.jar test/manual/delombokAntTask/src/Test
cd test/manual/delombokAntTask/src/ && java -cp ../../../../lombok.jar:. Test
grep -r "public static void main" test/
cd ../../../../ && grep -r "public static void main" test/
javac -cp .:lombok.jar test/transform/knownBroken/before/I1132RecursiveGenerics.java
java -cp .:lombok.jar test.transform.knownBroken.before.I1132RecursiveGenerics
cd test/transform/knownBroken/before/ && java -cp ../../../../../lombok.jar:. I1132RecursiveGenerics

