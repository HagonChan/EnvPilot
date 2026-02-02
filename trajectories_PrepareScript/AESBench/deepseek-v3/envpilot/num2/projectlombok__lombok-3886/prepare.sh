ls -la
ls -la .github/workflows
open ".github/workflows/ant.yml"
apt-get update && apt-get install -y openjdk-11-jdk
apt-get install -y ant
java -version && ant -version
ant -noinput dist
open "/testbed/src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java" 336
find_file ScriptManager.java
ls -la lib
jar tf lib/ivyplusplus.jar | grep ScriptManager
open "build.xml"
open "buildScripts/compile.ant.xml"
ant deps
open "/testbed/src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java" 336
edit 'sm.addScriptIfComplexWitness(new String[][] {OSGI_TYPES, new String[] {"org/eclipse/jdt/internal/compiler/parser/TerminalToken"}}, ScriptBuilder.replaceMethodCall()' 'sm.addScriptIfWitness(OSGI_TYPES, ScriptBuilder.replaceMethodCall()' False
ant -noinput dist
ant -noinput test.javacCurrent
