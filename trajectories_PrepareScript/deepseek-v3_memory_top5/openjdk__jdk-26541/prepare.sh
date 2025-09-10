ls -la
ls -la .github/workflows
open ".github/workflows/build-linux.yml"
open ".github/workflows/test.yml"
open "README.md"
open "doc/building.md"
apt-get update && apt-get install -y alpine-sdk alsa-lib-dev autoconf bash cups-dev cups-libs fontconfig-dev freetype-dev grep libx11-dev libxext-dev libxrandr-dev libxrender-dev libxt-dev libxtst-dev linux-headers wget zip gcc g++ libxrandr-dev libxtst-dev libcups2-dev libasound2-dev debootstrap qemu-user-static make libssl-dev
apt-get update && apt-get install -y build-essential autoconf libasound2-dev libcups2-dev libfontconfig1-dev libfreetype6-dev libx11-dev libxext-dev libxrender-dev libxt-dev libxtst-dev libssl-dev wget zip gcc g++ make debootstrap qemu-user-static
bash configure
apt-get install -y file
bash configure
search_file 'Boot JDK' doc/building.md
wget https://download.java.net/openjdk/jdk8u41/ri/openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz
wget --no-check-certificate https://download.java.net/openjdk/jdk8u41/ri/openjdk-8u41-b04-linux-x64-14_jan_2020.tar.gz
wget https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u292-b10/OpenJDK8U-jdk_x64_linux_hotspot_8u292b10.tar.gz
tar -xzf OpenJDK8U-jdk_x64_linux_hotspot_8u292b10.tar.gz
export JAVA_HOME=$(pwd)/jdk8u292-b10 && export PATH=$JAVA_HOME/bin:$PATH
bash configure
wget https://download.java.net/java/GA/jdk25/0e1cde1b5b4a4e3fae0e5a8e5a8e5a8/8/GPL/openjdk-25_linux-x64_bin.tar.gz
wget https://download.java.net/java/GA/jdk26/0e1cde1b5b4a4e3fae0e5a8e5a8e5a8/8/GPL/openjdk-26_linux-x64_bin.tar.gz
wget https://download.java.net/java/GA/jdk17.0.7/0d483333a00540d668896bf3bae2f5ac/8/GPL/openjdk-17.0.7_linux-x64_bin.tar.gz
wget https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.7%2B7/OpenJDK17U-jdk_x64_linux_hotspot_17.0.7_7.tar.gz
curl -L -O https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.7%2B7/OpenJDK17U-jdk_x64_linux_hotspot_17.0.7_7.tar.gz
apt-get install -y curl
curl -L -O https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.7%2B7/OpenJDK17U-jdk_x64_linux_hotspot_17.0.7_7.tar.gz
tar -xzf OpenJDK17U-jdk_x64_linux_hotspot_17.0.7_7.tar.gz
export JAVA_HOME=$(pwd)/jdk-17.0.7+7 && export PATH=$JAVA_HOME/bin:$PATH
bash configure
bash configure --with-boot-jdk=$(pwd)/jdk-17.0.7+7
search_file 'Boot JDK version' doc/building.md
wget https://download.java.net/java/GA/jdk26/0e1cde1b5b4a4e3fae0e5a8e5a8e5a8/8/GPL/openjdk-26_src.tar.gz
bash configure --with-boot-jdk=$(pwd)/jdk-17.0.7+7 --verbose
wget https://github.com/openjdk/jdk26
open "configure"
open "make/autoconf/configure"
search_file 'Boot JDK version' make/autoconf/configure
search_file 'Boot JDK' make/autoconf/configure
search_file 'Boot JDK version' doc/building.md
bash configure --with-boot-jdk=$(pwd)/jdk-17.0.7+7 --verbose
wget https://github.com/openjdk/jdk26u
open "configure"
open "make/autoconf/configure"
search_file 'Boot JDK version' make/autoconf/configure
search_file 'Boot JDK' make/autoconf/configure
search_file 'Boot JDK version' doc/building.md
bash configure --with-boot-jdk=$(pwd)/jdk-17.0.7+7 --verbose
wget https://github.com/openjdk/jdk26
open "configure"
open "make/autoconf/configure"

