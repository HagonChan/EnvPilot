ls -la
ls -la .github/workflows
open ".github/workflows/gradle.yml"
cat setup.sh
apt-get update && apt-get install -y openjdk-17-jdk openjdk-21-jdk
ls /usr/lib/jvm
wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.3.2/graalvm-ce-java17-linux-amd64-22.3.2.tar.gz && tar -xzf graalvm-ce-java17-linux-amd64-22.3.2.tar.gz -C /usr/lib/jvm/
apt-get install -y wget
wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.3.2/graalvm-ce-java17-linux-amd64-22.3.2.tar.gz && tar -xzf graalvm-ce-java17-linux-amd64-22.3.2.tar.gz -C /usr/lib/jvm/
tar -xzf graalvm-ce-java17-linux-amd64-22.3.2.tar.gz -C /usr/lib/jvm/
export JAVA_HOME=/usr/lib/jvm/graalvm-ce-java17-22.3.2 && export PATH=$JAVA_HOME/bin:$PATH
java -version
apt-get install -y gradle
gradle --version
./gradlew check --no-daemon --continue
