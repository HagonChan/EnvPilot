ls -la
ls -la .github/workflows
open ".github/workflows/pitest.yml"
open "pom.xml"
apt-get update && apt-get install -y openjdk-11-jdk
apt-get install -y maven
apt-get install -y groovy
mvn install
ls -la target/surefire-reports
open "target/surefire-reports/TEST-com.puppycrawl.tools.checkstyle.MainTest.xml"
find_file MainTest.java
open "src/test/java/com/puppycrawl/tools/checkstyle/MainTest.java"
goto 338
find_file Main.java
open "src/main/java/com/puppycrawl/tools/checkstyle/Main.java"
goto 338
edit 'private static int runCheckstyle(CliOptions options, List<File> filesToProcess)
            throws CheckstyleException, IOException {
        // setup the properties
        final Properties props;' 'private static int runCheckstyle(CliOptions options, List<File> filesToProcess)
            throws CheckstyleException, IOException {
        // Check if any file is unreadable
        for (final File file : filesToProcess) {
            if (!file.canRead()) {
                return -1;
            }
        }

        // setup the properties
        final Properties props;'
mvn clean install
goto 338
open "src/test/java/com/puppycrawl/tools/checkstyle/MainTest.java"
goto 156
open "src/main/java/com/puppycrawl/tools/checkstyle/Main.java"
edit 'private static List<File> getFilesToProcess(CliOptions options) {
        final List<Pattern> patternsToExclude = options.getExclusions();

        final List<File> result = new LinkedList<>();
        for (File file : options.files) {
            result.addAll(listFiles(file, patternsToExclude));
        }
        return result;
    }' 'private static List<File> getFilesToProcess(CliOptions options) {
        final List<Pattern> patternsToExclude = options.getExclusions();

        final List<File> result = new LinkedList<>();
        for (File file : options.files) {
            if (!file.canRead()) {
                return Collections.emptyList();
            }
            result.addAll(listFiles(file, patternsToExclude));
        }
        return result;
    }'
mvn clean install
edit 'package com.puppycrawl.tools.checkstyle;

import java.io.File;' 'package com.puppycrawl.tools.checkstyle;

import java.io.File;
import java.util.Collections;'
goto 20
edit 'import java.util.stream.Collectors;

import org.apache.commons.logging.Log;' 'import java.util.Collections;
import java.util.stream.Collectors;

import org.apache.commons.logging.Log;'
mvn clean install
goto 338
edit 'private static int execute(CliOptions options, List<File> filesToProcess)
            throws IOException, CheckstyleException {
        int result = 0;

        if (options.generateSuppressionsFile) {
            final File file = new File(options.suppressionsFile);
            final String stringSuppressions =
                    SuppressionsStringPrinter.printSuppressions(file,
                            options.suppressionLineColumnNumber, options.tabWidth);
            System.out.print(stringSuppressions);
        }
        else {
            if (options.debug) {
                final Logger parentLogger = Logger.getLogger(Main.class.getName()).getParent();
                final ConsoleHandler handler = new ConsoleHandler();
                handler.setLevel(Level.FINEST);
                handler.setFilter(new OnlyCheckstyleLoggersFilter());
                parentLogger.addHandler(handler);
                parentLogger.setLevel(Level.FINEST);
            }
            if (LOG.isDebugEnabled()) {
                LOG.debug("Checkstyle debug logging enabled");
                LOG.debug("Running Checkstyle with version: "
                        + Main.class.getPackage().getImplementationVersion());
            }

            // run Checker
            result = runCheckstyle(options, filesToProcess);
        }

        return result;
    }' 'private static int execute(CliOptions options, List<File> filesToProcess)
            throws IOException, CheckstyleException {
        int result = 0;

        if (options.generateSuppressionsFile) {
            final File file = new File(options.suppressionsFile);
            final String stringSuppressions =
                    SuppressionsStringPrinter.printSuppressions(file,
                            options.suppressionLineColumnNumber, options.tabWidth);
            System.out.print(stringSuppressions);
        }
        else {
            if (options.debug) {
                final Logger parentLogger = Logger.getLogger(Main.class.getName()).getParent();
                final ConsoleHandler handler = new ConsoleHandler();
                handler.setLevel(Level.FINEST);
                handler.setFilter(new OnlyCheckstyleLoggersFilter());
                parentLogger.addHandler(handler);
                parentLogger.setLevel(Level.FINEST);
            }
            if (LOG.isDebugEnabled()) {
                LOG.debug("Checkstyle debug logging enabled");
                LOG.debug("Running Checkstyle with version: "
                        + Main.class.getPackage().getImplementationVersion());
            }

            // run Checker
            result = runCheckstyle(options, filesToProcess);
        }

        return result;
    }'
edit 'private static int execute(CliOptions options, List<File> filesToProcess)
            throws IOException, CheckstyleException {
        int result = 0;

        if (options.generateSuppressionsFile) {
            final File file = new File(options.suppressionsFile);
            final String stringSuppressions =
                    SuppressionsStringPrinter.printSuppressions(file,
                            options.suppressionLineColumnNumber, options.tabWidth);
            System.out.print(stringSuppressions);
        }
        else {
            if (options.debug) {
                final Logger parentLogger = Logger.getLogger(Main.class.getName()).getParent();
                final ConsoleHandler handler = new ConsoleHandler();
                handler.setLevel(Level.FINEST);
                handler.setFilter(new OnlyCheckstyleLoggersFilter());
                parentLogger.addHandler(handler);
                parentLogger.setLevel(Level.FINEST);
            }
            if (LOG.isDebugEnabled()) {
                LOG.debug("Checkstyle debug logging enabled");
                LOG.debug("Running Checkstyle with version: "
                        + Main.class.getPackage().getImplementationVersion());
            }

            // run Checker
            result = runCheckstyle(options, filesToProcess);
        }

        return result;
    }' 'private static int execute(CliOptions options, List<File> filesToProcess)
            throws IOException, CheckstyleException {
        int result = 0;

        if (options.generateSuppressionsFile) {
            final File file = new File(options.suppressionsFile);
            final String stringSuppressions =
                    SuppressionsStringPrinter.printSuppressions(file,
                            options.suppressionLineColumnNumber, options.tabWidth);
            System.out.print(stringSuppressions);
        }
        else {
            if (options.debug) {
                final Logger parentLogger = Logger.getLogger(Main.class.getName()).getParent();
                final ConsoleHandler handler = new ConsoleHandler();
                handler.setLevel(Level.FINEST);
                handler.setFilter(new OnlyCheckstyleLoggersFilter());
                parentLogger.addHandler(handler);
                parentLogger.setLevel(Level.FINEST);
            }
            if (LOG.isDebugEnabled()) {
                LOG.debug("Checkstyle debug logging enabled");
                LOG.debug("Running Checkstyle with version: "
                        + Main.class.getPackage().getImplementationVersion());
            }

            // run Checker
            result = runCheckstyle(options, filesToProcess);
            if (result == -1) {
                return -1;
            }
        }

        return result;
    }'
goto 300
goto 156
goto 156
goto 156
goto 156
goto 156
goto 156
goto 156
goto 156
goto 156
goto 156
goto 156
goto 156
goto 156
goto 156
goto 156
goto 156
goto 156

