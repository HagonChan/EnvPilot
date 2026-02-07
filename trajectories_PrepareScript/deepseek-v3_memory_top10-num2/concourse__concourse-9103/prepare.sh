ls -la
ls -la .github/workflows
open "README.md"
open "go.mod"
go version
apt-get update && apt-get install -y golang
go version
apt-get remove -y golang golang-go golang-1.18-go golang-1.18 golang-doc golang-src
wget https://dl.google.com/go/go1.24.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get install -y wget
wget https://dl.google.com/go/go1.24.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
export GOPATH=$HOME/go && export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
go mod download
go install ./...
go test ./...
apt-get install -y iptables
apt-get install -y containerd
go test ./...
sudo go test ./...
iptables -L
