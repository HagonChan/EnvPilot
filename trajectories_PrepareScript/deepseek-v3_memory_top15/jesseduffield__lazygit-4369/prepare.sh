ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Makefile"
open "go.mod"
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget build-essential ca-certificates curl gettext libexpat1-dev libssl-dev libz-dev openssl
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
go mod download
make test
git config --global user.email "you@example.com" && git config --global user.name "Your Name"
make test
