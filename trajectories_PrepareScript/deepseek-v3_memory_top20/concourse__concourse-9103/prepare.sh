ls -la
ls -la .github/workflows
open ".github/workflows/codeql-analysis.yml"
open "README.md"
open "go.mod"
go version
apt-get update
wget https://dl.google.com/go/go1.24.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y wget
wget https://dl.google.com/go/go1.24.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
export GOPATH=$HOME/go && export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
go mod download
go test ./...
apt-get install -y iptables containerd
go test ./...
