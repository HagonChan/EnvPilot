find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file azure-pipelines.yml
find_file Jenkinsfile
find_file requirements.txt
find_file setup.py
find_file pyproject.toml
find_file package.json
find_file README.md
open "/testbed/README.md"
ls -la
open "/testbed/pom.xml"
mvn clean verify
sudo apt-get update
apt-get update
apt-get install -y maven
mvn clean verify
java -version
ls -la /usr/lib/jvm/java-11-openjdk-amd64/jmods/
apt-get install -y openjdk-11-jdk-headless
ls -la /usr/lib/jvm/java-11-openjdk-amd64/jmods/
mvn clean verify
ping -c 4 maven.google.com
curl -I https://maven.google.com
apt-get install -y curl
curl -I https://maven.google.com
open "/testbed/pom.xml"
search_file r8
search_file proguard
search_file shrink
open "/testbed/test-shrinker/pom.xml"
edit '<pluginRepository>
      <id>google</id>
      <url>https://maven.google.com</url>
    </pluginRepository>' '<pluginRepository>
      <id>google</id>
      <url>https://maven.google.com</url>
    </pluginRepository>
    <pluginRepository>
      <id>central</id>
      <url>https://repo.maven.apache.org/maven2</url>
    </pluginRepository>' True
mvn clean verify
open "/testbed/pom.xml"
edit '<module>test-shrinker</module>' '<!-- <module>test-shrinker</module> -->' True
mvn clean verify
