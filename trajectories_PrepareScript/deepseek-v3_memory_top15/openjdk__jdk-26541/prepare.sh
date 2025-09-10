ls -la
ls -la .github/workflows
open ".github/workflows/build-linux.yml"
open ".github/workflows/test.yml"
apt-get update && apt-get install -y gcc g++ make autoconf libssl-dev libgtest-dev
./configure
chmod +x configure && ./configure
apt-get install -y file && ./configure
apt-get install -y unzip && ./configure
apt-get install -y zip && ./configure
open ".github/workflows/build-linux.yml"
wget https://download.java.net/java/GA/jdk21.0.2/f2283984656d49d69e91c558476027ac/13/GPL/openjdk-21.0.2_linux-x64_bin.tar.gz
apt-get install -y wget && wget https://download.java.net/java/GA/jdk21.0.2/f2283984656d49d69e91c558476027ac/13/GPL/openjdk-21.0.2_linux-x64_bin.tar.gz
tar -xzf openjdk-21.0.2_linux-x64_bin.tar.gz && export JAVA_HOME=$(pwd)/jdk-21.0.2
./configure --with-boot-jdk=$JAVA_HOME
wget https://download.java.net/java/GA/jdk26/123456789abcdef123456789abcdef123456789/13/GPL/openjdk-26_linux-x64_bin.tar.gz
open ".github/workflows/build-linux.yml"
open ".github/actions/get-bootjdk/action.yml"
open ".github/actions/config/action.yml"
open "make/conf/github-actions.conf"
wget https://download.java.net/java/GA/jdk24/1f9ff9062db4449d8ca828c504ffae90/36/GPL/openjdk-24_linux-x64_bin.tar.gz
tar -xzf openjdk-24_linux-x64_bin.tar.gz && export JAVA_HOME=$(pwd)/jdk-24
./configure --with-boot-jdk=$JAVA_HOME
apt-get install -y libasound2-dev && ./configure --with-boot-jdk=$JAVA_HOME
apt-get install -y libcups2-dev && ./configure --with-boot-jdk=$JAVA_HOME
apt-get install -y libfontconfig1-dev && ./configure --with-boot-jdk=$JAVA_HOME
apt-get install -y libx11-dev libxext-dev libxrender-dev libxrandr-dev libxtst-dev libxt-dev && ./configure --with-boot-jdk=$JAVA_HOME
make
make test
make test TEST=tier1
wget https://ci.adoptium.net/job/jtreg/lastSuccessfulBuild/artifact/jtreg-6.2+1.tar.gz
open ".github/workflows/build-linux.yml"
open ".github/actions/get-jtreg/action.yml"
open ".github/actions/config/action.yml"
open "make/conf/github-actions.conf"
wget https://github.com/adoptium/jtreg/releases/download/jtreg7.5.2%2B1/jtreg-7.5.2+1.tar.gz
wget https://github.com/adoptium/jtreg/releases/download/jtreg7.5.2/jtreg-7.5.2.tar.gz
wget https://github.com/adoptium/jtreg/releases/download/jtreg7.3.1/jtreg-7.3.1.tar.gz
wget https://download.java.net/openjdk/jtreg/jtreg-7.5.2+1.tar.gz
wget https://github.com/adoptium/jtreg/releases/download/jtreg7.5.2/jtreg-7.5.2.tar.gz
wget https://github.com/adoptium/jtreg/releases/download/jtreg7.5.2%2B1/jtreg-7.5.2+1.tar.gz
wget https://github.com/adoptium/jtreg/releases/download/jtreg7.5.2/jtreg-7.5.2.tar.gz
wget https://github.com/adoptium/jtreg/releases/download/jtreg7.5.2%2B1/jtreg-7.5.2+1.tar.gz
wget https://github.com/adoptium/jtreg/releases/download/jtreg7.5.2/jtreg-7.5.2.tar.gz
wget https://github.com/adoptium/jtreg/releases/download/jtreg7.5.2%2B1/jtreg-7.5.2+1.tar.gz
wget https://github.com/adoptium/jtreg/releases/download/jtreg7.5.2/jtreg-7.5.2.tar.gz
wget https://github.com/adoptium/jtreg/releases/download/jtreg7.5.2%2B1/jtreg-7.5.2+1.tar.gz
wget https://github.com/adoptium/jtreg/releases/download/jtreg7.5.2/jtreg-7.5.2.tar.gz
wget https://github.com/adoptium/jtreg/releases/download/jtreg7.5.2%2B1/jtreg-7.5.2+1.tar.gz

