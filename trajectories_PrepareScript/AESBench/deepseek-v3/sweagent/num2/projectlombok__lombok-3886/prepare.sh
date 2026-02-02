ls -la
ls -la .github/workflows
open ".github/workflows/ant.yml"
find . -name ivy.xml
open "./buildScripts/ivy.xml"
apt-get update && apt-get install -y openjdk-11-jdk
apt-get install -y ant
java -version && ant -version
ant -p
ant deps
ant -noinput dist
find . -name "ScriptManager.java"
open "./buildScripts/ivy.xml"
search_file lombok.patcher ./buildScripts/ivy.xml
grep -r "lombok.patcher" --include="*.xml" .
curl -I https://projectlombok.org/downloads/lombok.patcher-0.54.jar
apt-get install -y curl
curl -I https://projectlombok.org/downloads/lombok.patcher-0.54.jar
curl -s https://projectlombok.org/downloads/lombok.patcher-0.54.jar | jar -t | grep ScriptManager
edit '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.54" conf="build,stripe->default" />' '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.52" conf="build,stripe->default" />' True
ant deps
ant -noinput dist
jar -tf /testbed/lib/lombok.patcher-0.52.jar | grep ScriptManager
find ~/.ivy2 -name "lombok.patcher-0.52.jar"
ls -la /testbed/lib
ant deps
find / -name "lombok.patcher-0.52.jar" 2>/dev/null
cp /testbed/ivyCache/org.projectlombok/lombok.patcher/jars/lombok.patcher-0.52.jar /testbed/lib/
ant -noinput dist
jar -tf /testbed/lib/lombok.patcher-0.52.jar | grep ScriptManager
open "./src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java"
jar -xf /testbed/lib/lombok.patcher-0.52.jar lombok/patcher/ScriptManager.class && javap -c -p lombok/patcher/ScriptManager.class | grep -A 10 addScriptIfComplexWitness
jar -xf /testbed/lib/lombok.patcher-0.54.jar lombok/patcher/ScriptManager.class && javap -c -p lombok/patcher/ScriptManager.class | grep -A 10 addScriptIfComplexWitness
find / -name "lombok.patcher-0.54.jar" 2>/dev/null
cp /testbed/ivyCache/org.projectlombok/lombok.patcher/jars/lombok.patcher-0.54.jar /testbed/lib/
jar -xf /testbed/lib/lombok.patcher-0.54.jar lombok/patcher/ScriptManager.class && javap -c -p lombok/patcher/ScriptManager.class | grep -A 10 addScriptIfComplexWitness
goto 336
edit 'sm.addScriptIfComplexWitness(new String[][] {OSGI_TYPES, new String[] {"org/eclipse/jdt/internal/compiler/parser/TerminalToken"}}, ScriptBuilder.replaceMethodCall()' 'sm.addScriptIfWitness(OSGI_TYPES, ScriptBuilder.replaceMethodCall()' False
ant -noinput dist
ant -noinput test.javacCurrent

