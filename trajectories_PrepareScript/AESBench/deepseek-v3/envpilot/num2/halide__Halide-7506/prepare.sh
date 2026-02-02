ls -la
ls -la .github/workflows
open ".github/workflows/presubmit.yml"
open ".github/workflows/pip.yml"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 15CF4D18AF4F7421 && sudo apt-add-repository "deb https://apt.llvm.org/$(lsb_release -sc)/ llvm-toolchain-$(lsb_release -sc)-14 main" && sudo apt-get update && sudo apt-get install llvm-14 clang-14 liblld-14-dev libclang-14-dev clang-tidy-14 ninja-build
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 15CF4D18AF4F7421 && apt-add-repository "deb https://apt.llvm.org/$(lsb_release -sc)/ llvm-toolchain-$(lsb_release -sc)-14 main" && apt-get update && apt-get install -y llvm-14 clang-14 liblld-14-dev libclang-14-dev clang-tidy-14 ninja-build
apt-get update && apt-get install -y gnupg
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 15CF4D18AF4F7421 && apt-add-repository "deb https://apt.llvm.org/$(lsb_release -sc)/ llvm-toolchain-$(lsb_release -sc)-14 main" && apt-get update && apt-get install -y llvm-14 clang-14 liblld-14-dev libclang-14-dev clang-tidy-14 ninja-build
apt-get update && apt-get install -y lsb-release software-properties-common
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 15CF4D18AF4F7421 && apt-add-repository "deb https://apt.llvm.org/$(lsb_release -sc)/ llvm-toolchain-$(lsb_release -sc)-14 main" && apt-get update && apt-get install -y llvm-14 clang-14 liblld-14-dev libclang-14-dev clang-tidy-14 ninja-build
echo "deb https://apt.llvm.org/jammy/ llvm-toolchain-jammy-14 main" > /etc/apt/sources.list.d/llvm.list && apt-get update
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
apt-get update && apt-get install -y wget
apt-get install -y --reinstall ubuntu-keyring && apt-get update
apt-get clean
apt-get install -y --reinstall ubuntu-keyring && apt-get update
df -h
du -sh /var/* | sort -rh | head -n 10
du -sh /var/lib/* | sort -rh | head -n 10
apt-get clean && rm -rf /var/lib/apt/lists/*
df -h
du -sh /* | sort -rh | head -n 10

