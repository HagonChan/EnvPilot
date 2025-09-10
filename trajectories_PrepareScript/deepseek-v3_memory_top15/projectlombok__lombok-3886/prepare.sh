ls -la
ls -la .github/workflows
open ".github/workflows/ant.yml"
apt-get update && apt-get install -y openjdk-11-jdk
java -version
ant -noinput dist
apt-get install -y ant
ant -version
ant -noinput dist
ant -noinput dist
open "src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java" 336
open "build.xml"
open "buildScripts/compile.ant.xml"
open "buildScripts/ivysettings.xml"
open "ivy.xml"
ls -la buildScripts
open "buildScripts/ivy.xml"
edit '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.54" conf="build,stripe->default" />' '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.60" conf="build,stripe->default" />' False
ant -noinput dist
curl -s https://repo1.maven.org/maven2/org/projectlombok/lombok.patcher/ | grep -o 'href="[^"]*"' | sed 's/href="//;s/"//' | grep -v '^$'
apt-get install -y curl
curl -s https://repo1.maven.org/maven2/org/projectlombok/lombok.patcher/ | grep -o 'href="[^"]*"' | sed 's/href="//;s/"//' | grep -v '^$'
curl -s https://repo.eclipse.org/content/repositories/eclipse-staging/org/projectlombok/lombok.patcher/ | grep -o 'href="[^"]*"' | sed 's/href="//;s/"//' | grep -v '^$'
edit '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.60" conf="build,stripe->default" />' '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.54" conf="build,stripe->default" />' False
ls -la projectLocalRepo/org/projectlombok/lombok.patcher/
mkdir -p projectLocalRepo/org/projectlombok/lombok.patcher/0.54
curl -o projectLocalRepo/org/projectlombok/lombok.patcher/0.54/lombok.patcher-0.54.jar https://repo1.maven.org/maven2/org/projectlombok/lombok.patcher/0.54/lombok.patcher-0.54.jar
ant -noinput dist
curl -s https://repo1.maven.org/maven2/org/projectlombok/lombok.patcher/ | grep -o 'href="[^"]*"' | sed 's/href="//;s/"//' | grep -v '^$'
curl -s https://repo.eclipse.org/content/repositories/eclipse-staging/org/projectlombok/lombok.patcher/ | grep -o 'href="[^"]*"' | sed 's/href="//;s/"//' | grep -v '^$'
open "src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java" 336
edit 'sm.addScriptIfComplexWitness(new String[][] {OSGI_TYPES, new String[] {"org/eclipse/jdt/internal/compiler/parser/TerminalToken"}}, ScriptBuilder.replaceMethodCall()' 'sm.addScriptIfWitness(OSGI_TYPES, ScriptBuilder.replaceMethodCall()' False
ant -noinput dist
ant -noinput test.javacCurrent
