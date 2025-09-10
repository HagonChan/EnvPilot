ls -la
ls -la .github/workflows
open ".github/workflows/ant.yml"
apt-get update && apt-get install -y openjdk-11-jdk
apt-get install -y ant
ant -noinput dist
ant -noinput dist
ping -c 4 projectlombok.org
curl -I https://projectlombok.org
sleep 60 && ant -noinput dist
open "buildScripts/ivysettings.xml"
find_file ivy.xml
open "buildScripts/ivy.xml"
wget --version
edit '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.54" conf="build,stripe->default" />' '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.60" conf="build,stripe->default" />' True
ant -noinput dist
edit '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.60" conf="build,stripe->default" />' '<dependency org="org.projectlombok" name="lombok.patcher" rev="0.54" conf="build,stripe->default" />' True
ant -noinput dist
ls -la /testbed/buildScripts/ivy-repo/org.projectlombok-lombok.patcher-*
open "src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java" 336
edit 'sm.addScriptIfComplexWitness(new String[][] {OSGI_TYPES, new String[] {"org/eclipse/jdt/internal/compiler/parser/TerminalToken"}}, ScriptBuilder.replaceMethodCall()
			.target(new MethodTarget("org.eclipse.jdt.internal.core.dom.rewrite.ASTRewriteAnalyzer", "visit"))
			.methodToReplace(new Hook("org.eclipse.jdt.internal.core.dom.rewrite.TokenScanner", "getTokenEndOffset", "int", "org.eclipse.jdt.internal.compiler.parser.TerminalToken", "int"))
			.replacementMethod(new Hook("lombok.launch.PatchFixesHider$PatchFixes", "getTokenEndOffsetFixed", "int", "org.eclipse.jdt.internal.core.dom.rewrite.TokenScanner", "java.lang.Object", "int", "java.lang.Object"))
			.requestExtra(StackRequest.PARAM1)
			.transplant()
			.build());' 'sm.addScriptIfWitness(OSGI_TYPES, ScriptBuilder.replaceMethodCall()
			.target(new MethodTarget("org.eclipse.jdt.internal.core.dom.rewrite.ASTRewriteAnalyzer", "visit"))
			.methodToReplace(new Hook("org.eclipse.jdt.internal.core.dom.rewrite.TokenScanner", "getTokenEndOffset", "int", "org.eclipse.jdt.internal.compiler.parser.TerminalToken", "int"))
			.replacementMethod(new Hook("lombok.launch.PatchFixesHider$PatchFixes", "getTokenEndOffsetFixed", "int", "org.eclipse.jdt.internal.core.dom.rewrite.TokenScanner", "java.lang.Object", "int", "java.lang.Object"))
			.requestExtra(StackRequest.PARAM1)
			.transplant()
			.build());' False
open "src/eclipseAgent/lombok/eclipse/agent/EclipsePatcher.java" 336
edit 'sm.addScriptIfComplexWitness(new String[][] {OSGI_TYPES, new String[] {"org/eclipse/jdt/internal/compiler/parser/TerminalToken"}}, ScriptBuilder.replaceMethodCall()' 'sm.addScriptIfWitness(OSGI_TYPES, ScriptBuilder.replaceMethodCall()' False
ant -noinput dist
ant -noinput test.javacCurrent
ant -noinput test.javac6
ant -noinput test.javac8
