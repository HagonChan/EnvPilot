ls -la
ls -la .github/workflows
open ".github/workflows/echo.yml"
go version
wget https://dl.google.com/go/go1.23.0.linux-amd64.tar.gz && tar -xzf go1.23.0.linux-amd64.tar.gz && rm go1.23.0.linux-amd64.tar.gz && mv go /usr/local
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.23.0.linux-amd64.tar.gz && tar -xzf go1.23.0.linux-amd64.tar.gz && rm go1.23.0.linux-amd64.tar.gz && mv go /usr/local
export PATH=$PATH:/usr/local/go/bin
go version
go mod download
export GOPROXY=https://proxy.golang.org,direct && go mod download
go get -v
export GOPROXY=direct && go mod download
ping -c 4 google.com
apt-get update && apt-get install -y iputils-ping
ping -c 4 google.com
cat /etc/resolv.conf
go test -race --coverprofile=coverage.coverprofile --covermode=atomic ./...
export CGO_ENABLED=1 && go test -race --coverprofile=coverage.coverprofile --covermode=atomic ./...
export GOPROXY=https://proxy.golang.org,direct && export CGO_ENABLED=1 && go test -race --coverprofile=coverage.coverprofile --covermode=atomic ./...
