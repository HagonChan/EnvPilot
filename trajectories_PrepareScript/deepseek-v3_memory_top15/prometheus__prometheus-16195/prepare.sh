ls -la
open "go.mod"
open "Makefile"
open "Makefile.common"
go version
wget https://golang.org/dl/go1.23.4.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.4.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -OL https://golang.org/dl/go1.23.4.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.4.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y curl
curl -OL https://golang.org/dl/go1.23.4.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.4.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
go mod download
go test ./...
