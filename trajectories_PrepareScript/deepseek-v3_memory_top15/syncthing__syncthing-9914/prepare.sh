ls -la
ls -la .github/workflows
open ".github/workflows/build-syncthing.yaml"
open "go.mod"
wget https://golang.org/dl/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
wget https://golang.org/dl/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
go mod download
go run build.go
go run build.go test
CGO_ENABLED=1 go run build.go test
apt-get install -y gcc git make
CGO_ENABLED=1 go run build.go test
