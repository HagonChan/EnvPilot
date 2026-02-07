ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "pom.xml"
apt-get update && apt-get install -y temurin-8-jdk
apt-get install -y openjdk-8-jdk
java -version
apt-get install -y maven
mvn --version
mvn -s .github/maven-ci-settings.xml -q clean verify -B
open "pom.xml"
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
        </configuration>
      </plugin>
    </plugins>
  </build>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<configuration>
          <source>1.8</source>
          <target>1.8</target>
        </configuration>' '<configuration>
          <source>1.8</source>
          <target>1.8</target>
          <compilerArgs>
            <arg>-Xlint:all</arg>
          </compilerArgs>
          <release>8</release>
        </configuration>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<compilerArgs>
            <arg>-Xlint:all</arg>
          </compilerArgs>
          <release>8</release>' '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-Xlint:-module</arg>
          </compilerArgs>
          <release>8</release>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-Xlint:-module</arg>
          </compilerArgs>
          <release>8</release>' '<compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-Xlint:-module</arg>
            <arg>--add-modules=ALL-MODULE-PATH</arg>
            <arg>--module-path=</arg>
          </compilerArgs>
          <release>8</release>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
apt-get install -y openjdk-11-jdk
java -version
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<source>1.8</source>
          <target>1.8</target>
          <compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-Xlint:-module</arg>
            <arg>--add-modules=ALL-MODULE-PATH</arg>
            <arg>--module-path=</arg>
          </compilerArgs>
          <release>8</release>' '<source>11</source>
          <target>11</target>
          <compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-Xlint:-module</arg>
          </compilerArgs>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
open "pom.xml"
edit '<dependencyManagement>
    <dependencies>
      <dependency>
        <groupId>io.vertx</groupId>
        <artifactId>vertx-dependencies</artifactId>
        <version>${project.version}</version>
        <type>pom</type>
        <scope>import</scope>
      </dependency>
    </dependencies>
  </dependencyManagement>' '<dependencyManagement>
    <dependencies>
      <dependency>
        <groupId>io.vertx</groupId>
        <artifactId>vertx-dependencies</artifactId>
        <version>${project.version}</version>
        <type>pom</type>
        <scope>import</scope>
      </dependency>
      <dependency>
        <groupId>io.vertx</groupId>
        <artifactId>vertx-codegen</artifactId>
        <version>${project.version}</version>
      </dependency>
    </dependencies>
  </dependencyManagement>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
edit '<build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-compiler-plugin</artifactId>
        <version>3.8.1</version>
        <configuration>
          <source>11</source>
          <target>11</target>
          <compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-Xlint:-module</arg>
          </compilerArgs>
        </configuration>
      </plugin>
    </plugins>
  </build>' '<build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-compiler-plugin</artifactId>
        <version>3.8.1</version>
        <configuration>
          <source>11</source>
          <target>11</target>
          <compilerArgs>
            <arg>-Xlint:all</arg>
            <arg>-Xlint:-module</arg>
          </compilerArgs>
          <annotationProcessorPaths>
            <path>
              <groupId>io.vertx</groupId>
              <artifactId>vertx-codegen</artifactId>
              <version>${project.version}</version>
            </path>
          </annotationProcessorPaths>
        </configuration>
      </plugin>
    </plugins>
  </build>'
mvn -s .github/maven-ci-settings.xml -q clean verify -B
