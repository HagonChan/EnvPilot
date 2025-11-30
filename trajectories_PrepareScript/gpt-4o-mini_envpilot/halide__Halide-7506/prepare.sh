
ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/pip.yml"
open ".github/workflows/presubmit.yml"
apt-get update
apt-get install -y llvm-14 clang lld clang-tools-extra libpng-dev libjpeg-turbo8-dev gcc g++ python3 git build-essential pkg-config
apt-get install -y llvm-14 clang lld libpng-dev libjpeg-turbo8-dev gcc g++ python3 git build-essential pkg-config
apt-get clean
apt-get install -y llvm-14 clang lld libpng-dev libjpeg-turbo8-dev gcc g++ python3 git build-essential pkg-config
apt-get autoremove -y && apt-get clean
df -h
du -sh /var/cache/apt/archives/*
du -sh /*
ls -la /root
rm -rf /root/.cache/*
df -h
ls -la /nix
du -sh /nix/store/*
nix-env -e nodejs-20.18.3
du -sh /nix/*

