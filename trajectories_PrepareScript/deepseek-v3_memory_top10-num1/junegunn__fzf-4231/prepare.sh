ls -la
ls -la .github/workflows
open ".github/workflows/linux.yml"
apt-get update && apt-get install --yes zsh fish tmux
wget https://dl.google.com/go/go1.20.linux-amd64.tar.gz && tar -xzf go1.20.linux-amd64.tar.gz && mv go /usr/local
apt-get install --yes wget
wget https://dl.google.com/go/go1.20.linux-amd64.tar.gz && tar -xzf go1.20.linux-amd64.tar.gz && mv go /usr/local
export PATH=$PATH:/usr/local/go/bin && go version
apt-get install --yes git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv && git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

