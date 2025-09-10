ls -la
ls -la .github/workflows
open ".github/workflows/ant.yml"
apt-get update && apt-get install -y zulu11-jdk
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9 && apt-add-repository 'deb http://repos.azul.com/azure-only/zulu/apt stable main'
apt-get install -y gnupg
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9 && apt-add-repository 'deb http://repos.azul.com/azure-only/zulu/apt stable main'
apt-get install -y software-properties-common
apt-add-repository 'deb http://repos.azul.com/azure-only/zulu/apt stable main' && apt-get update
echo 'deb http://repos.azul.com/azure-only/zulu/apt stable main' | tee /etc/apt/sources.list.d/zulu.list && apt-get update
apt-get install -y openjdk-11-jdk
apt-get install -y ant
ant -noinput dist
open "build.xml"
open "buildScripts/setup.ant.xml"
mkdir -p lib
curl -o lib/ivyplusplus.jar https://projectlombok.org/downloads/ivyplusplus.jar
apt-get install -y curl
curl -o lib/ivyplusplus.jar https://projectlombok.org/downloads/ivyplusplus.jar
ls -la lib/ivyplusplus.jar
cat lib/ivyplusplus.jar
curl -o lib/ivyplusplus.jar https://files.projectlombok.org/ivy/ivyplusplus.jar
ant -noinput dist
curl -o lib/openjdk6_rt.jar https://files.projectlombok.org/ivyrepo/langtools/rt-openjdk6.jar
ant -noinput dist
open "src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java" 336
find_file ScriptManager.java
find_file ivy.xml
open "buildScripts/ivy.xml"
curl -s https://projectlombok.org/ivyrepo/org.projectlombok/lombok.patcher/ | grep -o 'rev="[0-9.]*"' | sort -V | tail -1
edit '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.54" conf="build,stripe-&gt;default" />' '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.55" conf="build,stripe-&gt;default" />' True
search_file lombok.patcher buildScripts/ivy.xml
edit '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.54" conf="build,stripe->default" />' '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.55" conf="build,stripe->default" />' True
ant -noinput dist
curl -s https://repo1.maven.org/maven2/org/projectlombok/lombok.patcher/ | grep -o '>lombok.patcher-[0-9.]*' | sed 's/>lombok.patcher-//' | sort -V
edit '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.55" conf="build,stripe->default" />' '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.54" conf="build,stripe->default" />' True
ant -noinput dist
ls -la lib/
ls -la ~/.ivy2/cache/org.projectlombok/lombok.patcher/jars/
curl -o lib/lombok.patcher-0.54.jar https://projectlombok.org/ivyrepo/org.projectlombok/lombok.patcher/0.54/lombok.patcher-0.54.jar
cat lib/lombok.patcher-0.54.jar
curl -o lib/lombok.patcher-0.54.jar https://files.projectlombok.org/ivyrepo/org.projectlombok/lombok.patcher/0.54/lombok.patcher-0.54.jar
ant -noinput dist
jar xf lib/lombok.patcher-0.54.jar lombok/patcher/ScriptManager.class && javap -c lombok/patcher/ScriptManager.class
ls -la lib/lombok.patcher-0.54.jar
curl -o lib/lombok.patcher-0.54.jar https://files.projectlombok.org/ivyrepo/org.projectlombok/lombok.patcher/0.54/lombok.patcher-0.54.jar
curl -s https://projectlombok.org/download
curl -s https://api.github.com/repos/projectlombok/lombok/contents | grep -i patcher
create BUILD_ISSUE.md

