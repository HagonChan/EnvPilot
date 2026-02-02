ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
wget https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
which go && echo $PATH
/usr/local/go/bin/go version
rm -rf /usr/local/go && wget https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
/usr/local/go/bin/go version
tar -tf go1.22.3.linux-amd64.tar.gz | head -n 5
wget https://golang.org/dl/go1.22.3.linux-amd64.tar.gz && sha256sum go1.22.3.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz && /usr/local/go/bin/go version
which -a go
ls -la /usr/local/go/bin/go
/usr/local/go/bin/go version
apt-get install -y golang-1.22
/usr/lib/go-1.22/bin/go version
go get -v -t -d ./...
go test ./...
go test -v github.com/caddyserver/caddy/v2/caddytest/integration
