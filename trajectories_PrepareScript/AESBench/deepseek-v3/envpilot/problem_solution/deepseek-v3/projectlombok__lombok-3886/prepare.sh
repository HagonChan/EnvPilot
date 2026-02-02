ls -la
ls -la .github/workflows
open ".github/workflows/ant.yml"
apt-get update && apt-get install -y openjdk-11-jdk
apt-get install -y ant
java -version && ant -version
ant -noinput dist
open "/testbed/src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java" 336
find_file ScriptManager.java
find_file ivy.xml
open "/testbed/buildScripts/ivy.xml"
edit '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.54" conf="build,stripe-&gt;default" />' '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.55" conf="build,stripe-&gt;default" />'
edit '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.54" conf="build,stripe-&gt;default" />' '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.55" conf="build,stripe-&gt;default" />' True
open "/testbed/buildScripts/ivy.xml"
edit '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.54" conf="build,stripe->default" />' '<dependency org="org.projectlombok" name="lombok.patcher" rev="1.0.0" conf="build,stripe->default" />' True
ant resolve
ant -noinput dist
edit '<dependency org="org.projectlombok" name="lombok.patcher" rev="1.0.0" conf="build,stripe->default" />' '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.54" conf="build,stripe->default" />' True
ant -noinput dist
find_file ScriptManager.java
open "/testbed/src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java" 336
edit 'sm.addScriptIfComplexWitness(new String[][] {OSGI_TYPES, new String[] {"org/eclipse/jdt/internal/compiler/parser/TerminalToken"}}, ScriptBuilder.replaceMethodCall()' 'sm.addScriptIfWitness(OSGI_TYPES, ScriptBuilder.replaceMethodCall()'
ant -noinput dist
ant -noinput test.javacCurrent
