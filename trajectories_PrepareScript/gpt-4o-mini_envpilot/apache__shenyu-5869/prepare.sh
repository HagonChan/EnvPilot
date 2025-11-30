ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y openjdk-17-jdk maven
python3 -c "import urllib.request; urllib.request.urlretrieve('https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.3.1/maven-wrapper-3.3.1.jar', '.mvn/wrapper/maven-wrapper.jar')"
./mvnw -B clean test -Prelease
ls -la shenyu-admin/target/surefire-reports
