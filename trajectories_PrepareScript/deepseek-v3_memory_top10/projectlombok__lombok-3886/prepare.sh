ls -la
ls -la .github/workflows
open ".github/workflows/ant.yml"
apt-get update && apt-get install -y openjdk-11-jdk
java -version
apt-get install -y openjdk-11-jdk
java -version
ant -version
apt-get install -y ant
ant -version
ant -noinput dist
open "README.md"
open "build.xml"
open "buildScripts/compile.ant.xml"
find_file ivy.xml
open "buildScripts/ivy.xml"
curl -s https://repo1.maven.org/maven2/org/projectlombok/lombok.patcher/maven-metadata.xml | grep -oP '(?<=<version>)[^<]+' | sort -V | tail -1
apt-get install -y curl
curl -s https://repo1.maven.org/maven2/org/projectlombok/lombok.patcher/maven-metadata.xml | grep -oP '(?<=<version>)[^<]+' | sort -V | tail -1
curl -s https://repo1.maven.org/maven2/org/projectlombok/lombok.patcher/
find . -name "*lombok.patcher*"
ls -la ivyCache/org.projectlombok/lombok.patcher/jars/
find_file EclipsePatcher.java
open "src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java"
search_file addScriptIfComplexWitness src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java
edit 'sm.addScriptIfComplexWitness(new String[][] {OSGI_TYPES, new String[] {"org/eclipse/jdt/internal/compiler/parser/TerminalToken"}}, ScriptBuilder.replaceMethodCall()' 'sm.addScript(new String[][] {OSGI_TYPES, new String[] {"org/eclipse/jdt/internal/compiler/parser/TerminalToken"}}, ScriptBuilder.replaceMethodCall()'
goto 336
edit 'sm.addScriptIfComplexWitness(new String[][] {OSGI_TYPES, new String[] {"org/eclipse/jdt/internal/compiler/parser/TerminalToken"}}, ScriptBuilder.replaceMethodCall()' 'sm.addScriptIfWitness(OSGI_TYPES, ScriptBuilder.replaceMethodCall()'
ant -noinput dist
ant -noinput test
apt-get install -y openjdk-17-jdk
java -version
ant -noinput test
