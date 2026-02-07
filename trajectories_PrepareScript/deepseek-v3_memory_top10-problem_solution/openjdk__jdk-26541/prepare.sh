ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "README.md"
open "doc/building.md"
sudo apt-get update && sudo apt-get install -y alpine-sdk alsa-lib-dev autoconf bash cups-dev cups-libs fontconfig-dev freetype-dev grep libx11-dev libxext-dev libxrandr-dev libxrender-dev libxt-dev libxtst-dev linux-headers wget zip gcc g++ libxrandr-dev libxtst-dev libcups2-dev libasound2-dev debootstrap qemu-user-static make libssl-dev
apt-get update && apt-get install -y alpine-sdk alsa-lib-dev autoconf bash cups-dev cups-libs fontconfig-dev freetype-dev grep libx11-dev libxext-dev libxrandr-dev libxrender-dev libxt-dev libxtst-dev linux-headers wget zip gcc g++ libxrandr-dev libxtst-dev libcups2-dev libasound2-dev debootstrap qemu-user-static make libssl-dev
apt-get update && apt-get install -y build-essential autoconf libasound2-dev libcups2-dev libfontconfig1-dev libfreetype6-dev libx11-dev libxext-dev libxrandr-dev libxrender-dev libxt-dev libxtst-dev wget zip gcc g++ debootstrap qemu-user-static make libssl-dev
bash configure
apt-get install -y file
bash configure
apt-get install -y openjdk-17-jdk
bash configure --with-boot-jdk=/usr/lib/jvm/java-17-openjdk-amd64
apt-cache search openjdk-25
apt-get install -y openjdk-25-jdk
bash configure --with-boot-jdk=/usr/lib/jvm/java-25-openjdk-amd64
make images
make test-tier1
apt-get install -y jtreg
bash configure --with-boot-jdk=/usr/lib/jvm/java-25-openjdk-amd64 --with-jtreg=/usr/bin/jtreg
find /usr -name jtreg -type d
bash configure --with-boot-jdk=/usr/lib/jvm/java-25-openjdk-amd64 --with-jtreg=/usr/share/jtreg
wget https://github.com/openjdk/jtreg/releases/download/jtreg7.5.2/jtreg-7.5.2+1.tar.gz -O /tmp/jtreg.tar.gz
wget https://ci.adoptium.net/view/Dependencies/job/dependency_pipeline/lastSuccessfulBuild/artifact/jtreg/jtreg-7.5.2+1.tar.gz -O /tmp/jtreg.tar.gz
mkdir -p /opt/jtreg && tar -xzf /tmp/jtreg.tar.gz -C /opt/jtreg --strip-components=1 && export PATH=/opt/jtreg/bin:$PATH
jtreg -version
export PATH=/opt/jtreg/bin:$PATH && which java
jtreg -version
export JAVA_HOME=/usr/lib/jvm/java-25-openjdk-amd64 && jtreg -version
bash configure --with-boot-jdk=/usr/lib/jvm/java-25-openjdk-amd64 --with-jtreg=/opt/jtreg
make clean
make images
make test-tier1
open "/testbed/build/linux-x86_64-server-release/test-results/jtreg_test_hotspot_jtreg_tier1/html/report.html"
search_file FAIL /testbed/build/linux-x86_64-server-release/test-results/jtreg_test_hotspot_jtreg_tier1/html/report.html
search_file failed /testbed/build/linux-x86_64-server-release/test-results/jtreg_test_hotspot_jtreg_tier1/html/report.html
open "/testbed/build/linux-x86_64-server-release/test-results/jtreg_test_hotspot_jtreg_tier1/html/failed.html"
open "/testbed/build/linux-x86_64-server-release/test-support/jtreg_test_hotspot_jtreg_tier1/gc/TestAlwaysPreTouchBehavior_G1.jtr"
grep -A 10 "USER_SPECIFIED main" /testbed/build/linux-x86_64-server-release/test-support/jtreg_test_hotspot_jtreg_tier1/gc/TestAlwaysPreTouchBehavior_G1.jtr
cat /proc/meminfo
sysctl vm.overcommit_memory
sysctl -w vm.overcommit_memory=1
cd /testbed && make test TEST="jtreg:gc/TestAlwaysPreTouchBehavior.java" JTREG_BASIC_OPTIONS="-Xmx512m -Xms512m"
