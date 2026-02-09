ls -la
open "go.mod"
find_file '.github/workflows/*.yml'
find_file '.github/workflows/*.yaml'
open "README.md"
open "build.go"
find_file test
find_file '*test*'
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget git ruby gem gcc libc-dev ca-certificates
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
export GOPATH=$HOME/go && export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
go mod download
go run build.go
go test ./...
