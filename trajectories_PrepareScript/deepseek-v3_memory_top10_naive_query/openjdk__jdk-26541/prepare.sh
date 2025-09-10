ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "Makefile"
open "make/PreInit.gmk"
open "README.md"
open "doc/building.md"
apt-get update && apt-get install -y alpine-sdk alsa-lib-dev autoconf bash cups-dev cups-libs fontconfig-dev freetype-dev grep libx11-dev libxext-dev libxrandr-dev libxrender-dev libxt-dev libxtst-dev linux-headers wget zip gcc g++ libxrandr-dev libxtst-dev libcups2-dev libasound2-dev debootstrap qemu-user-static make libssl-dev
apt-get update && apt-get install -y autoconf bash grep wget zip gcc g++ libx11-dev libxext-dev libxrandr-dev libxrender-dev libxt-dev libxtst-dev libcups2-dev libasound2-dev debootstrap qemu-user-static make libssl-dev
bash configure
apt-get install -y file
bash configure
apt-get install -y openjdk-11-jdk
bash configure --with-boot-jdk=/usr/lib/jvm/java-11-openjdk-amd64
apt-get install -y openjdk-17-jdk
bash configure --with-boot-jdk=/usr/lib/jvm/java-17-openjdk-amd64
apt-cache search openjdk-24
wget -qO- https://openjdk.org/ | grep -i 'jdk 24'
open ".github/workflows/test.yml"
search_file 'Boot JDK' doc/building.md
open "configure"
open "make/autoconf/configure"
search_file 'Boot JDK' make/autoconf/configure
open "make/autoconf/boot-jdk.m4"
search_file DEFAULT_ACCEPTABLE_BOOT_VERSIONS make/autoconf/boot-jdk.m4
search_file DEFAULT_ACCEPTABLE_BOOT_VERSIONS= make/autoconf/boot-jdk.m4
open "make/autoconf/generated-configure.sh"
autoconf
ls -la
search_file DEFAULT_ACCEPTABLE_BOOT_VERSIONS configure
search_file BOOT_JDK_VERSION make/autoconf/boot-jdk.m4
open "make/autoconf/version-numbers"
ls -la make/autoconf/
open "make/autoconf/configure.ac"
open "make/autoconf/jdk-version.m4"
open "make/conf/version-numbers.conf"
wget -qO- https://jdk.java.net/archive/ | grep -i 'jdk 24'
open ".github/workflows/test.yml"
search_file 'Boot JDK' doc/building.md
search_file DEFAULT_ACCEPTABLE_BOOT_VERSIONS configure
search_file BOOT_JDK_VERSION make/autoconf/boot-jdk.m4
open "make/autoconf/version-numbers"
ls -la make/autoconf/
open "make/autoconf/configure.ac"
open "make/autoconf/jdk-version.m4"
wget -qO- https://jdk.java.net/archive/ | grep -i 'jdk 24'
open ".github/workflows/test.yml"
search_file 'Boot JDK' doc/building.md
search_file DEFAULT_ACCEPTABLE_BOOT_VERSIONS configure

