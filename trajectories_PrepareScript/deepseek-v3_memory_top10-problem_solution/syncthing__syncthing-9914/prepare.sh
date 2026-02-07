ls -la
ls -la .github/workflows
open ".github/workflows/build-syncthing.yaml"
apt-get update && apt-get install -y git ruby gem fpm gcc libc-dev ca-certificates
wget https://dl.google.com/go/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y wget
wget https://dl.google.com/go/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
go mod vendor
go mod vendor
export GOPROXY=https://goproxy.io && go mod vendor
go run build.go
go run build.go test
export CGO_ENABLED=1 && go run build.go test
apt-get install -y gcc
export CGO_ENABLED=1 && go run build.go test
