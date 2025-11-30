ls -la
ls -la .github/workflows
open ".github/workflows/codeql-analysis.yml"
open "go.mod"
wget https://dl.google.com/go/go1.24.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
curl -LO https://dl.google.com/go/go1.24.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y golang
apt-get remove -y golang && wget https://dl.google.com/go/go1.24.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get remove -y golang && apt-get install -y golang-go
export GOPATH=/root/go && export PATH=$PATH:/usr/local/go/bin:/root/go/bin
go mod download
open "go.mod"
edit 'toolchain go1.24.0' '' True
go mod download
go test ./...
apt-get update && apt-get install -y golang-go
export GOPATH=/root/go && export PATH=$PATH:/usr/local/go/bin:/root/go/bin
go test ./...
