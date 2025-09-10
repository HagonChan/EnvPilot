ls -la
ls -la .github/workflows
open ".github/workflows/ant.yml"
apt-get update && apt-get install -y openjdk-11-jdk
apt-get install -y ant
java -version && ant -version
ant -noinput dist
open "/testbed/src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java" 336
find_file ScriptManager.java
open "/testbed/build.xml"
open "/testbed/buildScripts/compile.ant.xml"
ant clean && ant -noinput dist -verbose
find_file ivy.xml
open "/testbed/buildScripts/ivy.xml"
ant -noinput resolve -verbose
ant -noinput deps -verbose
edit '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.54" conf="build,stripe->default" />' '<dependency org="org.projectlombok" name="lombok.patcher" rev="1.0.0" conf="build,stripe->default" />' True
ant -noinput deps -verbose
edit '<dependency org="org.projectlombok" name="lombok.patcher" rev="1.0.0" conf="build,stripe->default" />' '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.54" conf="build,stripe->default" />' True
ant -noinput deps -verbose
ant -noinput dist
open "/testbed/src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java" 336
edit 'sm.addScriptIfComplexWitness(new String[][] {OSGI_TYPES, new String[] {"org/eclipse/jdt/internal/compiler/parser/TerminalToken"}}, ScriptBuilder.replaceMethodCall()' 'sm.addScriptIfWitness(OSGI_TYPES, ScriptBuilder.replaceMethodCall()' False
ant -noinput dist
ant -noinput test.javacCurrent
