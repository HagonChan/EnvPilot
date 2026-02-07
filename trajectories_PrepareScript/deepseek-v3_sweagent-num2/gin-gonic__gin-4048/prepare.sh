ls -la
ls -la .github/workflows
open ".github/workflows/gin.yml"
open "Makefile"
go version
apt-get update && apt-get install -y golang-1.22
go version
find /usr -name go
export PATH=$PATH:/usr/lib/go-1.22/bin
go version
go env GOPATH GOROOT
make test
apt-get install -y make
make test
export GOPROXY=https://goproxy.io && make test
