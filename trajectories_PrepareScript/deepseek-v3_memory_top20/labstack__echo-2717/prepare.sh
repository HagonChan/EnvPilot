ls -la
ls -la .github/workflows
open ".github/workflows/echo.yml"
open "go.mod"
apt-get update && apt-get install -y golang
wget https://dl.google.com/go/go1.20.12.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.12.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y wget
wget https://dl.google.com/go/go1.20.12.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.12.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
export GOPATH=$HOME/go && export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
go mod download
go test -race --coverprofile=coverage.coverprofile --covermode=atomic ./...
CGO_ENABLED=1 go test -race --coverprofile=coverage.coverprofile --covermode=atomic ./...
apt-get install -y build-essential
CGO_ENABLED=1 go test -race --coverprofile=coverage.coverprofile --covermode=atomic ./...
