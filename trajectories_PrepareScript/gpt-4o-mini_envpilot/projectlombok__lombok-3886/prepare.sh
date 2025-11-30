ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ant.yml"
apt-get update && apt-get install -y openjdk-11-jdk
ant -noinput dist
apt-get install -y ant
ant -noinput dist
ant -noinput test
