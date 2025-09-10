ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open ".github/workflows/build-linux.yml"
apt-get update && apt-get install -y gcc-10 g++-10 libxrandr-dev libxtst-dev libcups2-dev libasound2-dev alpine-sdk alsa-lib-dev bash cups-dev cups-libs fontconfig-dev freetype-dev grep libx11-dev libxext-dev libxrandr-dev libxrender-dev libxt-dev libxtst-dev linux-headers wget zip debootstrap qemu-user-static libssl-dev zlib1g-dev
apt-get install -y gcc-10 g++-10 libxrandr-dev libxtst-dev libcups2-dev libasound2-dev alpine-sdk alsa-lib-dev bash cups-dev cups-libs fontconfig-dev freetype-dev grep libx11-dev libxext-dev libxrandr-dev libxrender-dev libxt-dev libxtst-dev linux-headers wget zip debootstrap qemu-user-static libssl-dev zlib1g-dev
apt-get install -y gcc-10 g++-10 libxrandr-dev libxtst-dev libcups2-dev libasound2-dev bash grep libx11-dev libxext-dev libxrandr-dev libxrender-dev libxt-dev libxtst-dev wget zip debootstrap qemu-user-static libssl-dev zlib1g-dev
find_file Makefile
open "/testbed/Makefile"
open "/testbed/make/PreInit.gmk"
find_file README.md
open "/testbed/README.md"
open "/testbed/doc/building.md"
bash configure
apt-get install -y autoconf
bash configure
apt-get install -y file
bash configure
apt-get install -y openjdk-11-jdk
bash configure --with-boot-jdk=/usr/lib/jvm/java-11-openjdk-amd64
apt-get install -y openjdk-17-jdk
bash configure --with-boot-jdk=/usr/lib/jvm/java-17-openjdk-amd64
wget -q https://jdk.java.net/archive/ -O - | grep -o 'https://download.java.net/java/GA/jdk[0-9]*/[^/]*/openjdk-[0-9]*_linux-x64_bin.tar.gz' | head -1
search_file 'Boot JDK' /testbed/doc/building.md
bash configure --help | grep -i boot-jdk
find_file 'INSTALL*'
search_file 'Boot JDK' /testbed/README.md
wget https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u372-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u372b07.tar.gz
tar -xzf OpenJDK8U-jdk_x64_linux_hotspot_8u372b07.tar.gz
bash configure --with-boot-jdk=$(pwd)/jdk8u372-b07
search_file 'Boot JDK' /testbed/Makefile
wget -q https://jdk.java.net/archive/ -O - | grep -o 'https://download.java.net/java/GA/jdk25/[^/]*/openjdk-25_linux-x64_bin.tar.gz' | head -1
search_file 'Boot JDK version' /testbed/doc/building.md
bash configure --help | grep -i override

find_file '*.sh'
bash configure --help | grep -i disable-bootstrap

bash configure --help | grep -i bootstrap
wget https://github.com/AdoptOpenJDK/openjdk25-binaries/releases/download/jdk-25.0.0%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.0_9.tar.gz
curl -k -L -O https://github.com/AdoptOpenJDK/openjdk25-binaries/releases/download/jdk-25.0.0%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.0_9.tar.gz
apt-get install -y curl
curl -k -L -O https://github.com/AdoptOpenJDK/openjdk25-binaries/releases/download/jdk-25.0.0%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.0_9.tar.gz
search_file 'Boot JDK' .github/workflows/build-linux.yml
bash configure --help | grep -i no-boot-jdk
find_file build-jdk.sh

bash configure --help | grep -i 'no-boot-jdk'
curl -k -L -O https://github.com/AdoptOpenJDK/openjdk25-binaries/releases/download/jdk-25.0.0%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.0_9.tar.gz

