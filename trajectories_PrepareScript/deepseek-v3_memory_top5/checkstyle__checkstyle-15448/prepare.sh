ls -la
open "pom.xml"
java -version
apt-get update && apt-get install -y openjdk-11-jdk
java -version
mvn -version
apt-get install -y maven
mvn -version
./mvnw clean install -DskipTests -Dstyle.color=never
mkdir -p .mvn/wrapper && python3 -c "import urllib.request; urllib.request.urlretrieve('https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.3.1/maven-wrapper-3.3.1.jar', '.mvn/wrapper/maven-wrapper.jar')"
./mvnw clean install -DskipTests -Dstyle.color=never
curl -o mvnw https://raw.githubusercontent.com/takari/maven-wrapper/master/mvnw
apt-get install -y curl
curl -o mvnw https://raw.githubusercontent.com/takari/maven-wrapper/master/mvnw
chmod +x mvnw
./mvnw clean install -DskipTests -Dstyle.color=never
echo "distributionUrl=https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/3.8.1/apache-maven-3.8.1-bin.zip" > .mvn/wrapper/maven-wrapper.properties
./mvnw clean install -DskipTests -Dstyle.color=never
./mvnw clean install -DskipTests -Dstyle.color=never -Dcheckstyle.skip=true
./mvnw clean install -DskipTests -Dstyle.color=never -Dcheckstyle.skip=true
search_file '<artifactId>maven-checkstyle-plugin</artifactId>' pom.xml
search_file checkstyle pom.xml
open "config/ant-phase-verify.xml"
./mvnw clean install -DskipTests -Dstyle.color=never -Dcheckstyle.ant.skip=true
./mvnw test -Dstyle.color=never
