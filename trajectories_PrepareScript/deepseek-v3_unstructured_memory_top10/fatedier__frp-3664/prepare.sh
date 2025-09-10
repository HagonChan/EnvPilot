ls -la
open "go.mod"
ls -la .github/workflows
open ".github/workflows/build-and-push-image.yml"
open ".github/workflows/golangci-lint.yml"
open "Makefile"
wget https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
make gotest
apt-get install -y make
make gotest
make e2e
go install github.com/onsi/ginkgo/v2/ginkgo@latest
