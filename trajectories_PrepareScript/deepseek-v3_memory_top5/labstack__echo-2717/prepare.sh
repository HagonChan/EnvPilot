ls -la
open ".github/workflows"
ls -la .github/workflows
open ".github/workflows/echo.yml"
go version
apt-get update && apt-get install -y golang
go version
go get github.com/labstack/echo/v4
go test -race ./...
go mod download
go test -race ./...
wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y wget
wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
export PATH=/usr/local/go/bin:$PATH && go version
go get github.com/labstack/echo/v4
go test -race ./...
go mod tidy
go test -race ./...
go get -u github.com/labstack/echo/v4
wget https://golang.org/dl/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
go get -u github.com/labstack/echo/v4
go test -race ./...
go clean -modcache
go get -u github.com/labstack/echo/v4
go test -race ./...
go clean -modcache
go get -u github.com/labstack/echo/v4
go test -race ./...
go clean -modcache
go get -u github.com/labstack/echo/v4
go test -race ./...
go clean -modcache
go get -u github.com/labstack/echo/v4
go test -race ./...
go clean -modcache
go get -u github.com/labstack/echo/v4
go env -w GOPROXY=direct
go get -u github.com/labstack/echo/v4
go env -w GOPROXY=https://proxy.golang.org,direct
go get -u github.com/labstack/echo/v4
go test -race ./...
go clean -modcache
go get -u github.com/labstack/echo/v4
go test -race ./...
go clean -modcache
go get -u github.com/labstack/echo/v4

