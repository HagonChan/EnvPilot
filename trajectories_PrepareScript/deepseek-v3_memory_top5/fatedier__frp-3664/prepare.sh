ls -la
ls -la .github/workflows
open ".github/workflows/build-and-push-image.yml"
open ".github/workflows/golangci-lint.yml"
open "Makefile"
wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -OL https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y curl
curl -OL https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
echo $GOPATH && echo $GOROOT
export GOPATH=$HOME/go && export GOROOT=/usr/local/go && export PATH=$PATH:$GOPATH/bin
go get ./...
make test
apt-get install -y make
make test
