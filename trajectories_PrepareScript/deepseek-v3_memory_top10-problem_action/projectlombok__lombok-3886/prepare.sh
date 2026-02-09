ls -la
ls -la .github/workflows
open ".github/workflows/ant.yml"
apt-get update && apt-get install -y openjdk-11-jdk
apt-get install -y ant
java -version && ant -version
ant -noinput dist
open "src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java"
find /testbed -name "ScriptManager.java" -type f
open "build.xml"
open "buildScripts/compile.ant.xml"
find /testbed -name "ivy.xml" -type f
open "buildScripts/ivy.xml"
curl -s "https://search.maven.org/solrsearch/select?q=g:org.projectlombok+AND+a:lombok.patcher&rows=1&wt=json" | jq -r '.response.docs[0].latestVersion'
apt-get update && apt-get install -y curl jq
curl -s "https://search.maven.org/solrsearch/select?q=g:org.projectlombok+AND+a:lombok.patcher&rows=1&wt=json" | jq -r '.response.docs[0].latestVersion'
curl -s "https://repo1.maven.org/maven2/org/projectlombok/lombok.patcher/maven-metadata.xml" | grep -oP '(?<=<latest>)[^<]+'
open "README.md"
curl -s "https://api.github.com/repos/projectlombok/lombok.patcher/releases/latest" | jq -r '.tag_name'
edit '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.54"' '<dependency org="org.projectlombok" name="lombok.patcher" rev="1.0.0"' True
open "buildScripts/ivy.xml"
open "src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java"
edit sm.addScriptIfComplexWitness sm.addScript True
ant -noinput dist
find /testbed -name "ScriptManager.java" -type f
edit 'sm.addScript(new String[][] {OSGI_TYPES, new String[] {"org/eclipse/jdt/internal/compiler/parser/TerminalToken"}}, ScriptBuilder.replaceMethodCall()' 'sm.addScriptIfWitness(OSGI_TYPES, ScriptBuilder.replaceMethodCall()' True
ant -noinput dist
ant -noinput test.javacCurrent
ant -noinput test.javac6
ant -noinput test.javac8
