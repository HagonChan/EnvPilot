ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Makefile"
open "Makefile.common"
go version
wget https://golang.org/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -OL https://golang.org/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt update && apt install -y curl
curl -OL https://golang.org/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -OL https://dl.google.com/go/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -OL https://dl.google.com/go/go1.23.1.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.1.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
/usr/local/go/bin/go version
export GOPROXY=direct && /usr/local/go/bin/go version
curl -OL https://dl.google.com/go/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
make build
apt update && apt install -y make
make build
export PREBUILT_ASSETS_STATIC_DIR=/tmp && make build
open "go.mod"
edit 'go 1.23.0' 'go 1.20'
edit 'toolchain go1.23.4' ''
make build
export GOPROXY=https://proxy.golang.org && make build
go test --tags=stringlabels ./tsdb/ -test.tsdb-isolation=false
go test -v ./... -short
