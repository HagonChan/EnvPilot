ls -la
ls -la .github/workflows
open ".github/workflows/build-and-push-image.yml"
open ".github/workflows/golangci-lint.yml"
open "go.mod"
wget https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
which wget
apt-get install -y curl
curl -OL https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
export GOPATH=$HOME/go && export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
go mod download
go mod download
export GOPROXY=direct && go mod download
apt-get update && apt-get install --only-upgrade ca-certificates -y
apt-get install --only-upgrade ca-certificates -y
go mod download
export GOPROXY=https://goproxy.io,direct && go mod download
go test ./...
go build -o bin/frpc ./cmd/frpc && go build -o bin/frps ./cmd/frps
go test ./...
