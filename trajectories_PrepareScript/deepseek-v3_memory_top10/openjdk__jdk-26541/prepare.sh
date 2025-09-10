ls -la
ls -la .github/workflows
open ".github/workflows/build-linux.yml"
open ".github/workflows/test.yml"
open "README.md"
open "doc/building.md"
apt-get update && apt-get install -y build-essential autoconf libssl-dev libgtest-dev
apt-get install -y jtreg
gcc --version && g++ --version && make --version && autoconf --version && cmake --version && jtreg -version
apt-get install -y cmake
cmake --version
mkdir -p build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=ON -DCATCH_BUILD_TESTING=ON -DCATCH_DEVELOPMENT_BUILD=ON
ls -la ..
../configure
chmod +x ../configure && ../configure
apt-get install -y file
../configure
apt-get install -y unzip
../configure
apt-get install -y zip
../configure
apt-get install -y openjdk-11-jdk
../configure --with-boot-jdk=/usr/lib/jvm/java-11-openjdk-amd64
apt-get install -y openjdk-17-jdk
../configure --with-boot-jdk=/usr/lib/jvm/java-17-openjdk-amd64
apt-cache search openjdk | grep -E 'openjdk-24|openjdk-25|openjdk-26'
open "doc/building.md"
ls -la ../doc
open "../doc/building.md"
wget https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26_8.tar.gz
apt-get install -y wget
wget https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26_8.tar.gz
open "../doc/building.md"
open ".github/workflows/build-linux.yml"
ls -la ../.github/workflows
open "../.github/workflows/build-linux.yml"
open "../.github/actions/get-bootjdk/action.yml"
open "../.github/actions/config/action.yml"
open "../make/conf/github-actions.conf"
wget https://download.java.net/java/GA/jdk24/1f9ff9062db4449d8ca828c504ffae90/36/GPL/openjdk-24_linux-x64_bin.tar.gz
tar -xzf openjdk-24_linux-x64_bin.tar.gz
mkdir -p /usr/lib/jvm && mv jdk-24 /usr/lib/jvm/
export JAVA_HOME=/usr/lib/jvm/jdk-24 && export PATH=$JAVA_HOME/bin:$PATH
java -version
../configure --with-boot-jdk=/usr/lib/jvm/jdk-24
apt-get install -y libasound2-dev
../configure --with-boot-jdk=/usr/lib/jvm/jdk-24
apt-get install -y libcups2-dev

