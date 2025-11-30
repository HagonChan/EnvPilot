
ls -la
find_file '*' .github/workflows
open ".github/workflows/tests.yml"
wget https://golang.org/dl/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -O https://golang.org/dl/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y build-essential git
wget https://golang.org/dl/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -O https://golang.org/dl/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-cache search golang
apt-get install -y golang-1.19
apt-get install -y golang-go
export GOPATH=/root/go && export PATH=$PATH:/usr/local/go/bin:/root/go/bin
go mod download
go test ./...
