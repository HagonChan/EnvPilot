ls -la
ls -la .github/workflows
open "README.md"
open "go.mod"
wget https://dl.google.com/go/go1.24.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.24.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
curl -s https://golang.org/VERSION?m=text
apt-get install -y curl
curl -s https://golang.org/VERSION?m=text
curl -s https://go.dev/VERSION?m=text
wget https://dl.google.com/go/go1.25.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.25.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
export GOPATH=/root/go && export PATH=$PATH:/usr/local/go/bin:/root/go/bin
go mod download
go test -v ./...
go test -v -count=1 ./...
go test -v -count=1 github.com/concourse/concourse/worker/runtime/spec
