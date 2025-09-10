ls -la
ls -la .github/workflows
open ".github/workflows/ant.yml"
apt-get update && apt-get install -y openjdk-11-jdk
apt-get install -y openjdk-11-jdk
java -version
apt-get install -y ant
ant -version
ant -noinput dist
open "buildScripts/compile.ant.xml"
ant clean
ant -noinput dist
open "buildScripts/ivysettings.xml"
ls -la buildScripts/ivy-repo
curl -s 'https://search.maven.org/solrsearch/select?q=g:org.projectlombok+AND+a:lombok.patcher&rows=5&wt=json' | jq -r '.response.docs[].v'
apt-get install -y curl jq
curl -s 'https://search.maven.org/solrsearch/select?q=g:org.projectlombok+AND+a:lombok.patcher&rows=5&wt=json' | jq -r '.response.docs[].v'
open "buildScripts/ivy-repo/org.projectlombok-lombok.patcher-0.54.xml"
open "buildScripts/compile.ant.xml"
grep -r "addScriptIfComplexWitness" src/
open "src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java"
edit 'sm.addScriptIfComplexWitness(new String[][] {OSGI_TYPES, new String[] {"org/eclipse/jdt/internal/compiler/parser/TerminalToken"}}, ScriptBuilder.replaceMethodCall()' '// sm.addScriptIfComplexWitness(new String[][] {OSGI_TYPES, new String[] {"org/eclipse/jdt/internal/compiler/parser/TerminalToken"}}, ScriptBuilder.replaceMethodCall())'
goto 336
edit 'sm.addScriptIfComplexWitness(new String[][] {OSGI_TYPES, new String[] {"org/eclipse/jdt/internal/compiler/parser/TerminalToken"}}, ScriptBuilder.replaceMethodCall()' 'sm.addScriptIfWitness(OSGI_TYPES, ScriptBuilder.replaceMethodCall()' True
ant -noinput dist
ant -noinput test
apt-get install -y openjdk-17-jdk
java -version
ant -noinput test
