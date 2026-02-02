ls -la
ls -la .github/workflows
open ".github/workflows/linux.yml"
wget https://dl.google.com/go/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get install -y wget
wget https://dl.google.com/go/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
apt-get install -y zsh fish tmux
apt-get update
apt-get install -y zsh fish tmux
apt-get install -y ruby ruby-dev bundler
bundle install
gem install bundler -v 2.6.2
apt-get install -y ruby3.1
apt-get install -y git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv

