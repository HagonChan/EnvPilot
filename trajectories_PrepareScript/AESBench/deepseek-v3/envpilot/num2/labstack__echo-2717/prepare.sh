ls -la
ls -la .github/workflows
open ".github/workflows/echo.yml"
open "go.mod"
wget https://go.dev/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y wget
apt-get install -y wget
wget https://go.dev/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
wget https://go.dev/dl/go1.22.1.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.1.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go mod download
go test -race --coverprofile=coverage.coverprofile --covermode=atomic ./...
CGO_ENABLED=1 go test -race --coverprofile=coverage.coverprofile --covermode=atomic ./...
apt-get install -y gcc
CGO_ENABLED=1 go test -race --coverprofile=coverage.coverprofile --covermode=atomic ./...
