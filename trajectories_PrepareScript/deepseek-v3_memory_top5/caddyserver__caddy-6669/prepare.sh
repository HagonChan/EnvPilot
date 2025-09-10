ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "go.mod"
wget https://golang.org/dl/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
wget https://golang.org/dl/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
/usr/local/go/bin/go version
go get -v -t -d ./...
go build
go test -v ./...
go test -v github.com/caddyserver/caddy/v2/modules/metrics
go test -v ./...
