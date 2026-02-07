ls -la
ls -la .github/workflows/
ls -la .github/
open "Makefile"
open "Makefile.core.mk"
search_file test Makefile.core.mk
open "VERSION"
open "go.mod"
open "go.sum"
make test
sudo apt-get update && sudo apt-get install -y make
apt-get update && apt-get install -y make
make test
apt-get install -y docker.io
make test
service docker start
systemctl start docker
dockerd &
docker ps
BUILD_WITH_CONTAINER=0 make test
go install github.com/jstemmer/go-junit-report@latest
apt-get install -y golang
go version
go install github.com/jstemmer/go-junit-report@latest
GOPROXY=direct go install github.com/jstemmer/go-junit-report@latest
search_file go-junit-report Makefile.core.mk
search_file unit-test Makefile.core.mk
search_file test Makefile.core.mk
go test -race ./...
edit 'go 1.23.0' 'go 1.23' True
open "go.mod"
edit 'go 1.23.0' 'go 1.23' True
go test -race ./...
GOPROXY=direct go mod download
GOPROXY=https://goproxy.io,direct go mod download
go test -race ./...
apt-get install -y golang-1.23
go version
update-alternatives --config go
export PATH=/usr/lib/go-1.23/bin:$PATH
go version
go test -race ./...
go mod tidy
GOPROXY=https://goproxy.cn,direct go mod tidy
go test -race ./...
apt-get install -y iptables
iptables --version
