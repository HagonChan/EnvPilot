ls -la
ls -la .github/workflows
open ".github/workflows/linux.yml"
wget https://dl.google.com/go/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y wget
wget https://dl.google.com/go/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
apt-get install -y zsh fish tmux
apt-get update
apt-get install -y zsh fish tmux
make lint
apt-get install -y make
make lint
apt-get install -y ruby ruby-bundler
make lint
bundle install
gem install bundler -v 2.6.2
apt-get install -y ruby3.1
apt-get install -y software-properties-common && add-apt-repository -y ppa:brightbox/ruby-ng && apt-get update && apt-get install -y ruby3.1

