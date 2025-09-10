ls -la
ls -la .github/workflows
open ".github/workflows/linux.yml"
open "go.mod"
wget https://go.dev/dl/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y wget
wget https://go.dev/dl/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
apt-get update && apt-get install -y ruby
apt-cache policy ruby
apt-get update && apt-get install -y git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev

