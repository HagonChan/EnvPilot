ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Makefile"
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
apt-get install -y wget
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
apt-get install -y build-essential ca-certificates curl gettext libexpat1-dev libssl-dev libz-dev openssl git
go mod vendor
go mod vendor
export GOPROXY=direct && go mod vendor
ping -c 4 google.com
apt-get install -y iputils-ping
ping -c 4 google.com
cat /etc/resolv.conf
go test ./... -short
go test ./...
