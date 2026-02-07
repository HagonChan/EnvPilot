ls -la
ls -la .github/workflows
open ".github/workflows/codeql-analysis.yml"
open "README.md"
open "go.mod"
go version
sudo apt update && sudo apt install -y golang-1.24
apt update && apt install -y golang-1.24
apt install -y golang
go version
wget https://golang.org/dl/go1.24.linux-amd64.tar.gz
apt install -y wget
wget https://golang.org/dl/go1.24.linux-amd64.tar.gz
export GOPATH=$HOME/go && export PATH=$PATH:$GOPATH/bin && go build
open "go.mod"
edit 'toolchain go1.24.0' '' True
edit 'go 1.24' 'go 1.18' True
go build
go test ./...
wget https://golang.org/dl/go1.20.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin && go version
/usr/local/go/bin/go version
edit 'go 1.18' 'go 1.20' True
export PATH=$PATH:/usr/local/go/bin && go build
go test ./...
wget https://golang.org/dl/go1.21.linux-amd64.tar.gz
