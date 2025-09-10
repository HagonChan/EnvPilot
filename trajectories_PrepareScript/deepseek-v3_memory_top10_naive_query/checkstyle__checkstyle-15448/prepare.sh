ls -la
open "pom.xml"
ls -la .github/workflows
open ".github/workflows/regression-report.yml"
open ".github/workflows/pitest.yml"
apt-get update && apt-get install -y openjdk-11-jdk maven
apt-get install -y groovy
mvn install
find_file MainTest.java
open "src/test/java/com/puppycrawl/tools/checkstyle/MainTest.java"
search_file testExistingTargetFileButWithoutReadAccess src/test/java/com/puppycrawl/tools/checkstyle/MainTest.java
goto 329
find_file Main.java
open "src/main/java/com/puppycrawl/tools/checkstyle/Main.java"
search_file setReadable src/main/java/com/puppycrawl/tools/checkstyle/Main.java
find_file Checker.java
open "src/main/java/com/puppycrawl/tools/checkstyle/Checker.java"
edit 'final int result = processFiles(options, filesToProcess);' '// Check file readability
        for (final File file : filesToProcess) {
            if (!file.canRead()) {
                System.err.println("Cannot read file: " + file.getAbsolutePath());
                return -1;
            }
        }

        final int result = processFiles(options, filesToProcess);'
search_file processFiles src/main/java/com/puppycrawl/tools/checkstyle/Main.java
search_file runCheckstyle src/main/java/com/puppycrawl/tools/checkstyle/Main.java
goto 355
open "src/main/java/com/puppycrawl/tools/checkstyle/Main.java" 355
edit 'private static int runCheckstyle(CliOptions options, List<File> filesToProcess)
            throws CheckstyleException, IOException {' 'private static int runCheckstyle(CliOptions options, List<File> filesToProcess)
            throws CheckstyleException, IOException {
        // Check if all files are readable
        for (final File file : filesToProcess) {
            if (!file.canRead()) {
                return -1;
            }
        }'
mvn install
search_file 'public static void main' src/main/java/com/puppycrawl/tools/checkstyle/Main.java
goto 111
edit 'private static int execute(ParseResult parseResult, CliOptions options)
            throws IOException, CheckstyleException {' 'private static int execute(ParseResult parseResult, CliOptions options)
            throws IOException, CheckstyleException {
        final int exitStatus;

        // return error if something is wrong in arguments
        final List<File> filesToProcess = getFilesToProcess(options);
        final List<String> messages = options.validateCli(parseResult, filesToProcess);
        final boolean hasMessages = !messages.isEmpty();
        if (hasMessages) {
            messages.forEach(System.out::println);
            exitStatus = EXIT_WITH_INVALID_USER_INPUT_CODE;
        }
        else {
            exitStatus = runCheckstyle(options, filesToProcess);
            if (exitStatus == -1) {
                return -1;
            }
        }

        return exitStatus;'
edit 'private static int execute(ParseResult parseResult, CliOptions options)
            throws IOException, CheckstyleException {
        final int exitStatus;

        // return error if something is wrong in arguments
        final List<File> filesToProcess = getFilesToProcess(options);
        final List<String> messages = options.validateCli(parseResult, filesToProcess);
        final boolean hasMessages = !messages.isEmpty();
        if (hasMessages) {
            messages.forEach(System.out::println);
            exitStatus = EXIT_WITH_INVALID_USER_INPUT_CODE;
        }
        else {
            exitStatus = runCheckstyle(options, filesToProcess);
            if (exitStatus == -1) {
                return -1;
            }
        }

        return exitStatus;

        final int exitStatus;

        // return error if something is wrong in arguments
        final List<File> filesToProcess = getFilesToProcess(options);
        final List<String> messages = options.validateCli(parseResult, filesToProcess);
        final boolean hasMessages = !messages.isEmpty();
        if (hasMessages) {
            messages.forEach(System.out::println);
            exitStatus = EXIT_WITH_INVALID_USER_INPUT_CODE;
        }
        else {
            exitStatus = runCli(options, filesToProcess);
        }
        return exitStatus;' 'private static int execute(ParseResult parseResult, CliOptions options)
            throws IOException, CheckstyleException {
        final int exitStatus;

        // return error if something is wrong in arguments
        final List<File> filesToProcess = getFilesToProcess(options);
        final List<String> messages = options.validateCli(parseResult, filesToProcess);
        final boolean hasMessages = !messages.isEmpty();
        if (hasMessages) {
            messages.forEach(System.out::println);
            exitStatus = EXIT_WITH_INVALID_USER_INPUT_CODE;
        }
        else {
            exitStatus = runCheckstyle(options, filesToProcess);
            if (exitStatus == -1) {
                return -1;
            }
        }

        return exitStatus;'
mvn install
search_file testPrintFullTreeOption src/test/java/com/puppycrawl/tools/checkstyle/MainTest.java
goto 1599
open "src/test/java/com/puppycrawl/tools/checkstyle/MainTest.java"
goto 1599
search_file -J src/main/java/com/puppycrawl/tools/checkstyle/Main.java
goto 757
open "src/main/java/com/puppycrawl/tools/checkstyle/Main.java"
goto 757
search_file printTreeWithJavadoc src/main/java/com/puppycrawl/tools/checkstyle/Main.java
goto 313
search_file 'public static void main' src/main/java/com/puppycrawl/tools/checkstyle/Main.java
goto 111
find_file CliOptions.java
search_file 'class CliOptions' src/main/java/com/puppycrawl/tools/checkstyle/Main.java
goto 638
search_file printTreeWithJavadoc src/main/java/com/puppycrawl/tools/checkstyle/Main.java
goto 761
search_file 'public static void main' src/main/java/com/puppycrawl/tools/checkstyle/Main.java
goto 111
search_file CliOptions src/main/java/com/puppycrawl/tools/checkstyle/Main.java

