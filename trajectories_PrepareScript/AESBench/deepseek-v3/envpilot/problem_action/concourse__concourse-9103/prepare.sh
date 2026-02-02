ls -la
ls -la .github/workflows
open "README.md"
open "go.mod"
go version
apt-get install -y golang
apt-get update
apt-get install -y golang
go version
apt-get remove -y golang golang-go golang-1.18 golang-1.18-go golang-src golang-doc
wget https://dl.google.com/go/go1.24.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get install -y wget
wget https://dl.google.com/go/go1.24.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
wget https://dl.google.com/go/go1.20.12.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.12.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
tar -C /usr/local -xzf go1.20.12.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
export GOPATH=/root/go && export PATH=$PATH:/usr/local/go/bin:/root/go/bin
go mod download
open "go.mod"
edit 'toolchain go1.24.0' '' True
go mod download
go install ./...
ls -la | grep Dockerfile
open "Dockerfile"
ls -la | grep Makefile
ls -la
open "docker-compose.yml"
ls -la hack
ls -la cmd
go build ./...

