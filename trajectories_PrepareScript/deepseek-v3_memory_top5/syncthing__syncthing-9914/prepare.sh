ls -la
ls -la .github/workflows
open ".github/workflows/build-syncthing.yaml"
go version
wget https://golang.org/dl/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
wget https://golang.org/dl/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
go get ./...
go run build.go test
export CGO_ENABLED=1 && go run build.go test
apt-get install -y gcc
export CGO_ENABLED=1 && go run build.go test
