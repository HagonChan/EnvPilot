ls -la
ls -la .github/workflows
open ".github/workflows/golangci-lint.yml"
open "go.mod"
open "Makefile"
apt-get update && apt-get install -y openssl socat
wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y wget
wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
go mod download
make gotest
apt-get install -y make
make gotest
make alltest
go install github.com/onsi/ginkgo/v2/ginkgo@latest
