ls -la
ls -la .github/workflows
open ".github/workflows/echo.yml"
open "go.mod"
go version
apt-get update
apt-get install -y golang
go version
go get github.com/labstack/echo/v4
go test -race --coverprofile=coverage.coverprofile --covermode=atomic ./...
wget https://go.dev/dl/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get install -y wget
wget https://go.dev/dl/go1.20.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go get github.com/labstack/echo/v4
go test -race --coverprofile=coverage.coverprofile --covermode=atomic ./...
