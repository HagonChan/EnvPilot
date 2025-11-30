ls -la
open ".github/workflows"
ls -la .github/workflows
open ".github/workflows/build-linux.yml"
open ".github/workflows/test.yml"
apt-get update && apt-get install -y build-essential clang cmake g++ libgtest-dev libssl-dev
make
find_file configure
./configure
chmod +x configure
./configure
apt-get install -y autoconf
./configure
apt-get install -y file
./configure
apt-get install -y unzip
./configure
apt-get install -y zip
./configure
apt-get install -y openjdk-11-jdk
./configure
apt-get install -y openjdk-17-jdk
./configure
wget https://download.java.net/java/GA/jdk26/openjdk-26_linux-x64_bin.tar.gz
curl -O https://download.java.net/java/GA/jdk26/openjdk-26_linux-x64_bin.tar.gz
apt-get install -y wget
wget https://download.java.net/java/GA/jdk26/openjdk-26_linux-x64_bin.tar.gz
wget https://download.java.net/java/GA/jdk25/openjdk-25_linux-x64_bin.tar.gz
wget https://download.java.net/java/GA/jdk24/openjdk-24_linux-x64_bin.tar.gz
apt-cache search openjdk
apt-get install -y openjdk-21-jdk
./configure
curl -s https://jdk.java.net/ | grep -oP 'href="\K[^"]*' | grep 'openjdk'
./configure --with-boot-jdk=/usr/lib/jvm/java-21-openjdk-amd64
make
apt-cache policy openjdk*
./configure --with-boot-jdk=/usr/lib/jvm/java-21-openjdk-amd64
make
apt-cache policy openjdk*
./configure --with-boot-jdk=/usr/lib/jvm/java-21-openjdk-amd64
make
apt-cache policy openjdk*
./configure --with-boot-jdk=/usr/lib/jvm/java-21-openjdk-amd64
make
apt-cache policy openjdk*
./configure --with-boot-jdk=/usr/lib/jvm/java-21-openjdk-amd64
make
apt-cache policy openjdk*
./configure --with-boot-jdk=/usr/lib/jvm/java-21-openjdk-amd64

