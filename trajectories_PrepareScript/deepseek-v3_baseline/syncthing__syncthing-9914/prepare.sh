ls -la
ls -la .github/workflows
open ".github/workflows/build-syncthing.yaml"
open "go.mod"
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz
curl -O https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz
apt-get update
apt-get install -y curl
curl -O https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
go run build.go
go run build.go test
CGO_ENABLED=1 go run build.go test
apt-get install -y gcc
apt-get install -y --fix-missing gcc
CGO_ENABLED=1 go run build.go test
