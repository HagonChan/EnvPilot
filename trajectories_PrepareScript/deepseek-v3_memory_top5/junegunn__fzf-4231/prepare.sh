ls -la
ls -la .github/workflows
open ".github/workflows/linux.yml"
apt-get update && apt-get install --yes zsh fish tmux
wget https://dl.google.com/go/go1.20.linux-amd64.tar.gz && tar -xvf go1.20.linux-amd64.tar.gz && mv go /usr/local
apt-get install --yes wget
wget https://dl.google.com/go/go1.20.linux-amd64.tar.gz && tar -xvf go1.20.linux-amd64.tar.gz && mv go /usr/local

