ls -la
ls -la .github/workflows
open ".github/workflows/build-and-push-image.yml"
open ".github/workflows/golangci-lint.yml"
open ".github/workflows/goreleaser.yml"
open "Makefile"
go version
apt-get update && apt-get install -y golang-1.21
export PATH=$PATH:/usr/lib/go-1.21/bin && go version
export GOPATH=$HOME/go && make gotest
apt-get install -y make
export GOPATH=$HOME/go && make gotest
export GOPROXY=https://goproxy.io && make gotest
make e2e
make build
make e2e
