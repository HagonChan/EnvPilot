
ls -R
open "Jenkinsfile"
apt-get update && apt-get install -y openjdk-8-jdk maven
./mvnw clean install -Pskip-spotless -Dmaven.test.skip=true -Dcheckstyle.skip=true -Dcheckstyle_unix.skip=true -Drat.skip=true
mkdir -p .mvn/wrapper && wget -O .mvn/wrapper/maven-wrapper.jar https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.3.1/maven-wrapper-3.3.1.jar
python3 -c "import urllib.request; urllib.request.urlretrieve('https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.3.1/maven-wrapper-3.3.1.jar', '.mvn/wrapper/maven-wrapper.jar')"
./mvnw clean install -Pskip-spotless -Dmaven.test.skip=true -Dcheckstyle.skip=true -Dcheckstyle_unix.skip=true -Drat.skip=true
./mvnw test

