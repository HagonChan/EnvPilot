ls -la
ls -la .github/workflows
open ".github/workflows/build-and-push-image.yml"
ls -la .circleci
open ".circleci/config.yml"
open "Makefile"
go version
apt-get update && apt-get install -y golang
apt-get install -y golang
go version
echo $GOPATH
export GOPATH=$HOME/go
echo $GO111MODULE
export GO111MODULE=on
make alltest
apt-get install -y make
make alltest
apt-get remove -y golang
wget https://dl.google.com/go/go1.20.7.linux-amd64.tar.gz -O /tmp/go1.20.7.linux-amd64.tar.gz
apt-get install -y wget
wget https://dl.google.com/go/go1.20.7.linux-amd64.tar.gz -O /tmp/go1.20.7.linux-amd64.tar.gz
tar -C /usr/local -xzf /tmp/go1.20.7.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
rm -rf /usr/bin/go
go version
export PATH=/usr/local/go/bin:$PATH && go version
make alltest
make alltest
make build
make e2e
