ls -la
ls -la .github/workflows
open ".github/workflows/ant.yml"
apt-get update && apt-get install -y openjdk-11-jdk
apt-get install -y --fix-missing openjdk-11-jdk
java -version
apt-get install -y ant
ant -version
ls -la
ant
open "build.xml"
open "buildScripts/tests.ant.xml"
ant test.javac6
ant test.formatter.compile
ant test.javac6
open "buildScripts/compile.ant.xml"
ant clean
ant deps
ant compile
open "src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java"
open "ivy.xml"
open "buildScripts/ivysettings.xml"
open "buildScripts/compile.ant.xml"
ls -la ivy-repo
ant deps
ls -la buildScripts/
open "buildScripts/ivy.xml"
edit '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.54" conf="build,stripe->default" />' '<dependency org="org.projectlombok" name="lombok.patcher" rev="1.18.28" conf="build,stripe->default" />' True
ant clean deps
edit '<dependency org="org.projectlombok" name="lombok.patcher" rev="1.18.28" conf="build,stripe->default" />' '<dependency org="org.projectlombok" name="lombok.patcher" rev="1.18.20" conf="build,stripe->default" />' True
ant clean deps
edit '<dependency org="org.projectlombok" name="lombok.patcher" rev="1.18.20" conf="build,stripe->default" />' '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.54" conf="build,stripe->default" />' True
ant clean deps
ant compile
open "src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java" 336
edit 'sm.addScriptIfComplexWitness(new String[][] {OSGI_TYPES, new String[] {"org/eclipse/jdt/internal/compiler/parser/TerminalToken"}}, ScriptBuilder.replaceMethodCall()' 'sm.addScriptIfWitness(OSGI_TYPES, ScriptBuilder.replaceMethodCall()' False
ant clean compile
ant test.javac6
