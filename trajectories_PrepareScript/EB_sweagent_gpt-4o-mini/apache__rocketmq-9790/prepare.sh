
find_file '*.yml'
open "/testbed/.github/workflows/pr-ci.yml"
open "/testbed/.github/workflows/push-ci.yml"
find_file requirements.txt
find_file setup.py
find_file pyproject.toml
find_file package.json
find_file README.md
open "/testbed/README.md"
find_file Makefile
find_file tox.ini
find_file environment.yml
wget https://dist.apache.org/repos/dist/release/rocketmq/5.3.3/rocketmq-all-5.3.3-bin-release.zip
curl -O https://dist.apache.org/repos/dist/release/rocketmq/5.3.3/rocketmq-all-5.3.3-bin-release.zip
ls -la
open "/testbed/BUILDING"
mvn -v
ls -la test
ls -la test/src
ls -la test/src/test
ls -la test/src/test/java
ls -la test/src/test/java/org
ls -la test/src/test/java/org/apache
ls -la test/src/test/java/org/apache/rocketmq
ls -la test/src/test/java/org/apache/rocketmq/test
ls -la test/src/test/java/org/apache/rocketmq/test/client
ls -la test/src/test/java/org/apache/rocketmq/test/client/consumer
ls -la test/src/test/java/org/apache/rocketmq/test/client/consumer/cluster
mvn test
create test/src/test/java/org/apache/rocketmq/test/TestRunner.java
open "test/src/test/java/org/apache/rocketmq/test/TestRunner.java"
edit '' 'import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

public class TestRunner {
    public static void main(String[] args) {
        Result result = JUnitCore.runClasses(
            DynamicAddAndCrashIT.class,
            DynamicAddConsumerIT.class,
            DynamicCrashConsumerIT.class
        );

        for (Failure failure : result.getFailures()) {
            System.out.println(failure.toString());
        }

        System.out.println("Test successful: " + result.wasSuccessful());
    }
}'
javac -cp test/src/test/java test/src/test/java/org/apache/rocketmq/test/TestRunner.java

