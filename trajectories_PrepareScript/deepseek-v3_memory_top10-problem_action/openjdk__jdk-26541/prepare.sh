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
apt-get install -y openjdk-11-jdk
bash configure --with-boot-jdk=/usr/lib/jvm/java-11-openjdk-amd64
apt-get install -y openjdk-17-jdk
bash configure --with-boot-jdk=/usr/lib/jvm/java-17-openjdk-amd64
search_file 'Boot JDK' doc/building.md
search_dir 'download Boot JDK' .
open "configure"
open "make/autoconf/configure"
search_file 'Boot JDK version' make/autoconf/configure
search_file 'Boot JDK' make/autoconf/configure
find_file '*.m4' make/autoconf
open "make/autoconf/boot-jdk.m4"
bash configure --with-boot-jdk=/usr/lib/jvm/java-17-openjdk-amd64 --help
search_file 'download Boot JDK' doc/building.md
search_file 'Boot JDK' README.md
