ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "go.mod"
wget https://go.dev/dl/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y wget
wget https://go.dev/dl/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go get -v -t -d ./...
cd ./cmd/caddy && go build
go test ./...
cd ../.. && go test ./...
go test -v github.com/caddyserver/caddy/v2/caddytest/integration
go test -v ./...
