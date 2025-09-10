ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "Makefile"
open "make/PreInit.gmk"
open "README.md"
open "doc/building.md"
bash configure
apt-get install -y autoconf
bash configure
apt-get install -y file
bash configure
apt-get install -y make
bash configure
apt-get install -y unzip
bash configure
apt-get install -y zip
bash configure
search_file 'Boot JDK' doc/building.md
apt-get install -y openjdk-8-jdk
apt-get update
apt-get install -y openjdk-8-jdk --fix-missing
bash configure --with-boot-jdk=/usr/lib/jvm/java-8-openjdk-amd64
search_file 'Boot JDK version' doc/building.md
apt-get install -y openjdk-11-jdk
bash configure --with-boot-jdk=/usr/lib/jvm/java-11-openjdk-amd64
apt-get install -y openjdk-10-jdk
apt-cache search openjdk-10
wget https://download.java.net/openjdk/jdk10/ri/jdk-10_linux-x64_bin_ri.tar.gz
apt-get install -y wget
wget https://download.java.net/openjdk/jdk10/ri/jdk-10_linux-x64_bin_ri.tar.gz
bash configure --with-boot-jdk=/usr/lib/jvm/java-11-openjdk-amd64 2>&1 | grep -i 'boot jdk'
apt-get install -y openjdk-9-jdk
wget https://download.java.net/openjdk/jdk9/ri/jdk-9_linux-x64_bin_ri.tar.gz
open "configure"
open "make/autoconf/configure"
search_file 'Boot JDK' make/autoconf/configure
search_file 'JDK version' make/autoconf/configure
search_file 'version check' make/autoconf/configure
open "make/autoconf/configure.ac"
open "make/autoconf/boot-jdk.m4"
search_file DEFAULT_ACCEPTABLE_BOOT_VERSIONS make/autoconf/boot-jdk.m4
search_file DEFAULT_ACCEPTABLE_BOOT_VERSIONS= make/autoconf/boot-jdk.m4
search_file ACCEPTABLE_BOOT_VERSIONS make/autoconf/boot-jdk.m4
scroll_down
scroll_down
scroll_down
scroll_down
scroll_down

