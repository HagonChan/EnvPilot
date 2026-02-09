ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open ".github/workflows/build-linux.yml"
open "README.md"
open "doc/building.md"
apt-get update && apt-get install -y build-essential autoconf libx11-dev libxext-dev libxrandr-dev libxrender-dev libxt-dev libxtst-dev libcups2-dev libasound2-dev libssl-dev
bash configure
apt-get install -y file
bash configure
apt-get install -y unzip
bash configure
apt-get install -y zip
bash configure
apt-get install -y openjdk-17-jdk
bash configure --with-boot-jdk=/usr/lib/jvm/java-17-openjdk-amd64
apt-cache search openjdk-26
mkdir -p /tmp/jdk && cd /tmp/jdk
wget https://download.java.net/java/GA/jdk26/0e58166e163e4a91b80e1d6a7d4b7c1b/12/GPL/openjdk-26_linux-x64_bin.tar.gz
apt-get install -y wget
wget https://download.java.net/java/GA/jdk26/0e58166e163e4a91b80e1d6a7d4b7c1b/12/GPL/openjdk-26_linux-x64_bin.tar.gz
wget https://download.java.net/java/GA/jdk21/0e58166e163e4a91b80e1d6a7d4b7c1b/12/GPL/openjdk-21_linux-x64_bin.tar.gz
/usr/lib/jvm/java-17-openjdk-amd64/bin/java -version
find_file configure
cd /testbed && find . -name configure
open "./configure"
open "./make/autoconf/configure"
bash configure --help
bash configure --with-boot-jdk=/usr/lib/jvm/java-17-openjdk-amd64 --disable-warnings-as-errors
search_file 'Boot JDK version' ./make/autoconf/configure
search_file 'Boot JDK' ./make/autoconf/configure
search_dir 'Boot JDK' .
open "./make/autoconf/boot-jdk.m4"
search_file DEFAULT_ACCEPTABLE_BOOT_VERSIONS ./make/autoconf/boot-jdk.m4
search_file DEFAULT_ACCEPTABLE_BOOT_VERSIONS= ./make/autoconf/boot-jdk.m4
search_dir DEFAULT_ACCEPTABLE_BOOT_VERSIONS .
open "./make/conf/version-numbers.conf"
edit 'DEFAULT_ACCEPTABLE_BOOT_VERSIONS="24 25 26"' 'DEFAULT_ACCEPTABLE_BOOT_VERSIONS="17 24 25 26"'
bash configure --with-boot-jdk=/usr/lib/jvm/java-17-openjdk-amd64
apt-get install -y libfontconfig1-dev
bash configure --with-boot-jdk=/usr/lib/jvm/java-17-openjdk-amd64
make
wget https://download.java.net/java/GA/jdk21/0e58166e163e4a91b80e1d6a7d4b7c1b/12/GPL/openjdk-21_linux-x64_bin.tar.gz
wget https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21%2B35/OpenJDK21U-jdk_x64_linux_hotspot_21_35.tar.gz
tar -xzf OpenJDK21U-jdk_x64_linux_hotspot_21_35.tar.gz
mkdir -p /usr/lib/jvm && mv jdk-21+35 /usr/lib/jvm/
export JAVA_HOME=/usr/lib/jvm/jdk-21+35 && $JAVA_HOME/bin/java -version
bash configure --with-boot-jdk=/usr/lib/jvm/jdk-21+35
bash configure --with-boot-jdk=/usr/lib/jvm/java-17-openjdk-amd64

