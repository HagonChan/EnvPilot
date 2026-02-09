ls -la
ls -la .github/workflows
open ".github/workflows/linux.yml"
wget https://dl.google.com/go/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
apt-get install -y wget
wget https://dl.google.com/go/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
apt-get install -y git make zsh fish tmux
make test
make lint
apt-get install -y ruby ruby-bundler
make lint
bundle install
gem uninstall bundler -a -x
gem install bundler -v 2.6.2
apt-get install -y ruby3.1
apt-get install -y git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv && git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone git://github.com/rbenv/rbenv.git ~/.rbenv && git clone git://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
