ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "Makefile"
open "README.md"
open "doc/building.md"
ls -la configure
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
apt-get install -y openjdk-17-jdk
bash configure
apt-cache search openjdk-26
wget https://download.java.net/java/GA/jdk26/0e786a6e03f2464d8b4d8b4a1a3e3e3e/4/GPL/openjdk-26_linux-x64_bin.tar.gz
apt-get install -y wget
wget https://download.java.net/java/GA/jdk26/0e786a6e03f2464d8b4d8b4a1a3e3e3e/4/GPL/openjdk-26_linux-x64_bin.tar.gz
apt-cache search openjdk-25
apt-get install -y openjdk-25-jdk
bash configure
apt-get install -y build-essential
bash configure
apt-get install -y libasound2-dev
bash configure
apt-get install -y libcups2-dev
bash configure
apt-get install -y libfontconfig1-dev
bash configure
apt-get install -y libx11-dev libxext-dev libxrender-dev libxrandr-dev libxtst-dev libxt-dev
bash configure
make images
make test-tier1
apt-cache search jtreg
apt-get install -y jtreg8
bash configure --with-jtreg=/usr/bin/jtreg
ls -la /usr/share/jtreg
bash configure --with-jtreg=/usr/share/jtreg
make clean
make images
make test-tier1
cat /testbed/build/linux-x86_64-server-release/test-results/jtreg_test_hotspot_jtreg_tier1/report.txt
ls -la /testbed/build/linux-x86_64-server-release/test-results/jtreg_test_hotspot_jtreg_tier1

