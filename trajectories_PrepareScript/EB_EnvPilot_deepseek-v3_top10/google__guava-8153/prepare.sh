ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y openjdk-17-jdk
java -version
apt-get install -y maven
mvn -version
./mvnw -B -P!standard-with-extra-repos -Dtoolchain.skip verify -U -Dmaven.javadoc.skip=true -Dsurefire.toolchain.version=17
./mvnw -B "-P!standard-with-extra-repos" -Dtoolchain.skip verify -U -Dmaven.javadoc.skip=true -Dsurefire.toolchain.version=17
./mvnw -B '-P!standard-with-extra-repos' -Dtoolchain.skip verify -U -Dmaven.javadoc.skip=true -Dsurefire.toolchain.version=17
mkdir -p .mvn/wrapper
curl -o .mvn/wrapper/maven-wrapper.jar https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar
wget -O .mvn/wrapper/maven-wrapper.jar https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar
apt-get install -y wget
wget -O .mvn/wrapper/maven-wrapper.jar https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar
./mvnw -B '-P!standard-with-extra-repos' -Dtoolchain.skip verify -U -Dmaven.javadoc.skip=true -Dsurefire.toolchain.version=17
./mvnw -B '-P!standard-with-extra-repos' -Dtoolchain.skip=true verify -U -Dmaven.javadoc.skip=true -Dsurefire.toolchain.version=17
./mvnw -B '-P!standard-with-extra-repos' -Dtoolchain.skip=true -DskipTests=true install -U -Dmaven.javadoc.skip=true
./mvnw -B '-P!standard-with-extra-repos' -Dmaven.toolchains.skip=true -DskipTests=true install -U -Dmaven.javadoc.skip=true
./mvnw -B '-P!standard-with-extra-repos' -Dmaven.toolchains.skip=true -DskipTests=true compile -U -Dmaven.javadoc.skip=true
./mvnw -B '-P!standard-with-extra-repos' -Dmaven.toolchains.skip=true -DskipTests=true compile -U -Dmaven.javadoc.skip=true -pl guava,guava-testlib
./mvnw -B '-P!standard-with-extra-repos' -Dmaven.toolchains.skip=true -DskipTests=true install -U -Dmaven.javadoc.skip=true -pl guava
./mvnw -B '-P!standard-with-extra-repos' -Dmaven.toolchains.skip=true -DskipTests=true compile -U -Dmaven.javadoc.skip=true -pl guava-testlib
./mvnw -B '-P!standard-with-extra-repos' -Dmaven.toolchains.skip=true verify -U -Dmaven.javadoc.skip=true
