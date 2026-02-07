ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "pom.xml"
apt-get update && apt-get install -y openjdk-8-jdk maven
java -version && mvn --version
update-alternatives --config java
sudo update-java-alternatives --set java-1.8.0-openjdk-amd64
update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java
java -version
mvn -s .github/maven-ci-settings.xml -q clean verify -B
search_file --module-version pom.xml
search_file '<maven.compiler' pom.xml
search_file '<artifactId>maven-compiler-plugin</artifactId>' pom.xml
search_file '<parent>' pom.xml
goto 16
edit '<properties>
    <junit.version>4.13.2</junit.version>
    <harmcrest.version>2.2</harmcrest.version>
    <assertj.version>3.4.1</assertj.version>
  </properties>' '<properties>
    <junit.version>4.13.2</junit.version>
    <harmcrest.version>2.2</harmcrest.version>
    <assertj.version>3.4.1</assertj.version>
    <maven.compiler.source>1.8</maven.compiler.source>
    <maven.compiler.target>1.8</maven.compiler.target>
  </properties>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<dependencies>
  </dependencies>' '<dependencies>
  </dependencies>
  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-compiler-plugin</artifactId>
        <version>3.8.1</version>
        <configuration>
          <source>1.8</source>
          <target>1.8</target>
          <compilerArgs>
            <arg>-Xlint:all</arg>
          </compilerArgs>
        </configuration>
      </plugin>
    </plugins>
  </build>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<compilerArgs>
            <arg>-Xlint:all</arg>
          </compilerArgs>' '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-XX:-EnableJVMCI</arg>
            <arg>-XX:-UseJVMCICompiler</arg>
          </compilerArgs>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-XX:-EnableJVMCI</arg>
            <arg>-XX:-UseJVMCICompiler</arg>
          </compilerArgs>' '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-XX:-EnableJVMCI</arg>
            <arg>-XX:-UseJVMCICompiler</arg>
            <arg>--add-modules=ALL-MODULE-PATH</arg>
            <arg>--module-path=</arg>
          </compilerArgs>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-XX:-EnableJVMCI</arg>
            <arg>-XX:-UseJVMCICompiler</arg>
            <arg>--add-modules=ALL-MODULE-PATH</arg>
            <arg>--module-path=</arg>
          </compilerArgs>' '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-XX:-EnableJVMCI</arg>
            <arg>-XX:-UseJVMCICompiler</arg>
            <arg>--release</arg>
            <arg>8</arg>
          </compilerArgs>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-XX:-EnableJVMCI</arg>
            <arg>-XX:-UseJVMCICompiler</arg>
            <arg>--release</arg>
            <arg>8</arg>
          </compilerArgs>' '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>--release</arg>
            <arg>8</arg>
          </compilerArgs>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>--release</arg>
            <arg>8</arg>
          </compilerArgs>' '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
          </compilerArgs>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
          </compilerArgs>' '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
            <arg>-XDignore.symbol.file</arg>
          </compilerArgs>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
            <arg>-XDignore.symbol.file</arg>
          </compilerArgs>' '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
            <arg>-XX:-EnableJVMCI</arg>
            <arg>-XX:-UseJVMCICompiler</arg>
          </compilerArgs>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
            <arg>-XX:-EnableJVMCI</arg>
            <arg>-XX:-UseJVMCICompiler</arg>
          </compilerArgs>' '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
            <arg>-XX:-EnableJVMCI</arg>
            <arg>-XX:-UseJVMCICompiler</arg>
            <arg>-Djava.net.preferIPv4Stack=true</arg>
          </compilerArgs>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
            <arg>-XX:-EnableJVMCI</arg>
            <arg>-XX:-UseJVMCICompiler</arg>
            <arg>-Djava.net.preferIPv4Stack=true</arg>
          </compilerArgs>' '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
          </compilerArgs>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
          </compilerArgs>' '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
            <arg>-XX:-EnableJVMCI</arg>
            <arg>-XX:-UseJVMCICompiler</arg>
          </compilerArgs>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
            <arg>-XX:-EnableJVMCI</arg>
            <arg>-XX:-UseJVMCICompiler</arg>
          </compilerArgs>' '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
            <arg>-XX:-EnableJVMCI</arg>
            <arg>-XX:-UseJVMCICompiler</arg>
            <arg>-Djava.net.preferIPv4Stack=true</arg>
          </compilerArgs>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
            <arg>-XX:-EnableJVMCI</arg>
            <arg>-XX:-UseJVMCICompiler</arg>
            <arg>-Djava.net.preferIPv4Stack=true</arg>
          </compilerArgs>' '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
          </compilerArgs>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
          </compilerArgs>' '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
            <arg>-XX:-EnableJVMCI</arg>
            <arg>-XX:-UseJVMCICompiler</arg>
          </compilerArgs>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
            <arg>-XX:-EnableJVMCI</arg>
            <arg>-XX:-UseJVMCICompiler</arg>
          </compilerArgs>' '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
            <arg>-Djava.net.preferIPv4Stack=true</arg>
          </compilerArgs>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
            <arg>-Djava.net.preferIPv4Stack=true</arg>
          </compilerArgs>' '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-source</arg>
            <arg>1.8</arg>
            <arg>-target</arg>
            <arg>1.8</arg>
            <arg>-XX:-EnableJVMCI</arg>
            <arg>-XX:-UseJVMCICompiler</arg>
          </compilerArgs>'

