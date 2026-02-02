ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
search_file run: .github/workflows/test.yml
goto 157
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
apt-get install -y openjdk-17-jdk
bash configure --with-boot-jdk=/usr/lib/jvm/java-17-openjdk-amd64
apt-cache search openjdk-24 openjdk-25 openjdk-26
curl -s https://jdk.java.net/ | grep -o 'https://download.java.net/openjdk/jdk[0-9]*/ri/openjdk-[0-9]*_linux-x64_bin.tar.gz' | head -1
apt-get install -y curl
curl -s https://jdk.java.net/ | grep -o 'https://download.java.net/openjdk/jdk[0-9]*/ri/openjdk-[0-9]*_linux-x64_bin.tar.gz' | head -1
open ".github/workflows/test.yml"
search_file 'Boot JDK' doc/building.md
apt-get install -y openjdk-8-jdk
bash configure --with-boot-jdk=/usr/lib/jvm/java-8-openjdk-amd64
search_file 'Boot JDK alternative' doc/building.md
find_file '*.sh'
open "README.md"
open "doc/building.html"
search_file 'Boot JDK Requirements' doc/building.html
goto 705
find_file '*boot-jdk*'
open "make/autoconf/boot-jdk.m4"
find_file '*download*'
search_file 'alternative Boot JDK' doc/building.md
find_file '*setup*'
search_file 'workaround Boot JDK' doc/building.md
find_file '*jdk*'
search_file 'skip Boot JDK' doc/building.md
find_file '*boot-jdk*'
search_file 'alternative Boot JDK' doc/building.md
find_file '*download*'
search_file 'workaround Boot JDK' doc/building.md
find_file '*jdk*'

