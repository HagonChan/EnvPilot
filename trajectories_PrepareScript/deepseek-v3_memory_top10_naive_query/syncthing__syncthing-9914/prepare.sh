ls -la
ls -la .github/workflows
open ".github/workflows/build-syncthing.yaml"
open "go.mod"
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y wget git gcc make
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go mod download
export GOPROXY=direct && go mod download
export GOPROXY=https://proxy.golang.org && go mod download
go get ./...
go run build.go test
