ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "go.mod"
wget https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
export PATH=/usr/local/go/bin:$PATH && go version
ls /usr/local/go
cat /usr/local/go/VERSION
which -a go
go clean -cache && go version
/usr/local/go/bin/go version
rm -rf /usr/local/go && wget https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH && go version
find / -name go 2>/dev/null
rm -rf /root/go/pkg/mod/golang.org/toolchain@v0.0.1-go1.23.0.linux-amd64 && export PATH=/usr/local/go/bin:$PATH && go version
echo $GOROOT
export GOROOT=/usr/local/go && export PATH=$GOROOT/bin:$PATH && go version
which go && /usr/local/go/bin/go version
rm -rf /usr/local/go && wget https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export GOROOT=/usr/local/go && export PATH=$GOROOT/bin:$PATH && go version
sha256sum go1.22.3.linux-amd64.tar.gz
export GOROOT=/usr/local/go && export PATH=$GOROOT/bin:$PATH && /usr/local/go/bin/go version
go get -v -t -d ./...
go build
go test ./...
go test -v github.com/caddyserver/caddy/v2/caddytest/integration
go test ./...
