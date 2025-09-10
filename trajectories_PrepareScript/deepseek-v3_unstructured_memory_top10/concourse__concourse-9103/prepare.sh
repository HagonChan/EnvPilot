ls -la
ls -la .github/workflows
open "README.md"
open "go.mod"
go version
apt-get update && apt-get install -y golang
go version
apt-get remove -y golang golang-go golang-1.18-go golang-1.18 golang-src golang-doc
wget https://dl.google.com/go/go1.24.0.linux-amd64.tar.gz -O /tmp/go1.24.0.linux-amd64.tar.gz && tar -C /usr/local -xzf /tmp/go1.24.0.linux-amd64.tar.gz
apt-get install -y wget
wget https://dl.google.com/go/go1.24.0.linux-amd64.tar.gz -O /tmp/go1.24.0.linux-amd64.tar.gz && tar -C /usr/local -xzf /tmp/go1.24.0.linux-amd64.tar.gz

