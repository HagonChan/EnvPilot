ls -la
ls -la .github/workflows
open ".github/workflows/build-syncthing.yaml"
open "go.mod"
open "README.md"
sudo apt-get update && sudo apt-get install -y golang-1.23
apt-get update && apt-get install -y golang-1.23
go version
ls /usr/lib/go-1.23/bin
export PATH=$PATH:/usr/lib/go-1.23/bin
go version
go run build.go
export GOPROXY=direct && go run build.go
cat go.mod
go mod download
ls -la vendor
go run build.go -mod=readonly

export GOPROXY=https://proxy.golang.org,direct && go run build.go
git clone https://github.com/golang/net.git /tmp/net && mkdir -p $GOPATH/pkg/mod/golang.org/x/net@v0.33.0 && cp -r /tmp/net/* $GOPATH/pkg/mod/golang.org/x/net@v0.33.0
go run build.go -mod=readonly
go run build.go test
