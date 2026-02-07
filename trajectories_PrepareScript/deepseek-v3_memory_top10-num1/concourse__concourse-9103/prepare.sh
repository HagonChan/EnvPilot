ls -la
ls -la .github/workflows
open "go.mod"
open "README.md"
ls -la | grep -i Makefile
wget https://go.dev/dl/go1.24.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get install -y wget
wget https://go.dev/dl/go1.24.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go mod download
go test -race ./...
go test ./...
apt-get install -y iptables
apt-get install -y containerd
go test ./...
