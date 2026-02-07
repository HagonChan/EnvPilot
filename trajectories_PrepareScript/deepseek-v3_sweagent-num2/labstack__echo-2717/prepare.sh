ls -la
ls -la .github/workflows
open ".github/workflows/checks.yml"
open ".github/workflows/echo.yml"
sudo apt-get update && sudo apt-get install -y golang-1.23
apt-get update && apt-get install -y golang-1.23
go version
find /usr -name go
export PATH=$PATH:/usr/lib/go-1.23/bin && go version
go test -race --coverprofile=coverage.coverprofile --covermode=atomic ./...
ping -c 4 proxy.golang.org
curl -I https://proxy.golang.org
apt-get install -y curl
curl -I https://proxy.golang.org
export GOPROXY=https://goproxy.cn,direct && go test -race --coverprofile=coverage.coverprofile --covermode=atomic ./...
