

ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/test.yml"
scroll_down
apt-get update && apt-get install -y doxygen libjpeg-dev libpng-dev ninja-build
apt-get install -y gcc-7 g++-7 gcc-multilib g++-multilib gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf gcc-aarch64-linux-gnu g++-aarch64-linux-gnu
apt-get update && apt-get install -y gcc g++
apt-get clean
apt-get install -y gcc g++
apt-get autoremove -y && apt-get clean
apt-get upgrade -y
df -h
du -sh /var/cache/apt/archives/* | sort -h
du -sh /* | sort -h
du -sh /var/* | sort -h
du -sh /var/log/* | sort -h

