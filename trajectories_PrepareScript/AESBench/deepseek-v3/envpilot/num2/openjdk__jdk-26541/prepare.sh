ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/test.yml"
open ".github/workflows/build-linux.yml"
open "README.md"
open "doc/building.md"
apt-get update && apt-get install -y build-essential g++ cmake make autoconf libx11-dev libxext-dev libxtst-dev libxrender-dev libxt-dev libcups2-dev libasound2-dev libssl-dev libgtest-dev
bash configure
apt-get install -y file
bash configure
apt-get install -y unzip
bash configure
apt-get install -y zip
bash configure
apt-get install -y openjdk-17-jdk
bash configure --with-boot-jdk=/usr/lib/jvm/java-17-openjdk-amd64
apt-cache search openjdk-24 openjdk-25 openjdk-26
wget https://download.java.net/java/GA/jdk26/0e786a248e7147b3b9b4d9e6d1b8a1c0/12/GPL/openjdk-26_linux-x64_bin.tar.gz
apt-get install -y wget
wget https://download.java.net/java/GA/jdk26/0e786a248e7147b3b9b4d9e6d1b8a1c0/12/GPL/openjdk-26_linux-x64_bin.tar.gz
wget https://download.java.net/java/GA/jdk25/0e786a248e7147b3b9b4d9e6d1b8a1c0/12/GPL/openjdk-25_linux-x64_bin.tar.gz
wget https://download.java.net/java/GA/jdk21/0e786a248e7147b3b9b4d9e6d1b8a1c0/12/GPL/openjdk-21_linux-x64_bin.tar.gz
bash configure --with-boot-jdk=/usr/lib/jvm/java-17-openjdk-amd64
