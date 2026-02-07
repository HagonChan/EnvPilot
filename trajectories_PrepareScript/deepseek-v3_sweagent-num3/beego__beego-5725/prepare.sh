ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "Makefile"
open "go.mod"
go mod download
cat /etc/os-release
sudo apt-get update && sudo apt-get install -y golang-1.20
apt-get update && apt-get install -y golang-1.20
go version
find /usr -name go
export PATH=$PATH:/usr/lib/go-1.20/bin
go version
go mod download
export GOPROXY=direct
go mod download
go env GOPATH
mkdir -p /root/go/src/golang.org/x && cd /root/go/src/golang.org/x && git clone https://github.com/golang/crypto.git
cd /testbed && go mod download
go env GOMODCACHE
mkdir -p /root/go/pkg/mod/golang.org/x && cp -r /root/go/src/golang.org/x/crypto /root/go/pkg/mod/golang.org/x/
cd /testbed && go mod download
open "go.mod"
edit 'replace github.com/gomodule/redigo => github.com/gomodule/redigo v1.8.8' 'replace github.com/gomodule/redigo => github.com/gomodule/redigo v1.8.8
replace golang.org/x/crypto => /root/go/src/golang.org/x/crypto'
cd /testbed && go mod download
cd /root/go/src/golang.org/x && git clone https://github.com/golang/net.git
cd /testbed && go build ./...
cd /testbed && make test-orm-all
apt-get install -y make
cd /testbed && make test-orm-all
apt-get install -y docker-compose
cd /testbed && make test-orm-all
apt-get install -y docker.io && systemctl start docker
service docker start
docker --version
dockerd &
docker ps
dockerd --iptables=false &
docker ps
cd /testbed && go test -v ./...
open "go.mod"
edit 'replace golang.org/x/crypto => /root/go/src/golang.org/x/crypto' 'replace golang.org/x/crypto => /root/go/src/golang.org/x/crypto
replace golang.org/x/net => github.com/golang/net v0.23.0'
cd /testbed && go mod download
export GOSUMDB=off
cd /testbed && go mod download
cd /testbed && go test -v ./...
