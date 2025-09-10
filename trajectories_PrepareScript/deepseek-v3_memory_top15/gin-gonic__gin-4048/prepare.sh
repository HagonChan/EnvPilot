ls -la
ls -la .github/workflows
open ".github/workflows/gin.yml"
open "Makefile"
wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -OL https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y curl
curl -OL https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
export GOPATH=$HOME/go && export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
go get -u github.com/gin-gonic/gin
make test
apt-get update && apt-get install -y make
make test
