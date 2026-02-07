ls -la
ls -la .github/workflows
open "go.mod"
open "Makefile"
open "Makefile.core.mk"
open "README.md"
apt-get update && apt-get install -y git curl wget gcc make libssl-dev ca-certificates
wget https://dl.google.com/go/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go && export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
go mod download
go test ./...
