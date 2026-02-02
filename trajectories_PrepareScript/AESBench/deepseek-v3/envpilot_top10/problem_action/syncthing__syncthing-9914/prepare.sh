ls -la
ls -la .github/workflows
open ".github/workflows/build-syncthing.yaml"
go version
apt-get install -y golang
apt-get update
apt-get install -y golang
go version
wget https://dl.google.com/go/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get install -y wget
wget https://dl.google.com/go/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go mod vendor
go run build.go
go run build.go test
