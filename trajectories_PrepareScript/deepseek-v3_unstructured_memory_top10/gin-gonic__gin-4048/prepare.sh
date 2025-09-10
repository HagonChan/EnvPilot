ls -la
ls -la .github/workflows
open ".github/workflows/gin.yml"
open "Makefile"
go version
apt-get update && apt-get install -y golang
go version
rm -rf /usr/local/go
wget https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz
apt-get install -y wget
wget https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
export PATH=/usr/local/go/bin:$PATH && go version
echo $GOPATH && echo $GOROOT
export GOPATH=$HOME/go && export GOROOT=/usr/local/go
go env
go get -u github.com/gin-gonic/gin
open "go.mod"
go mod tidy
make test
apt-get install -y make
make test
