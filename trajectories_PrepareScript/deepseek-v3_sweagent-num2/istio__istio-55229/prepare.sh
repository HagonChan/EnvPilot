ls -la
ls -la .github/workflows

ls -la .github/workflows
ls -la .github
open "README.md"
open "Makefile"
open "Makefile.core.mk"
search_file test Makefile.core.mk
make BUILD_WITH_CONTAINER=1
apt-get update && apt-get install -y make
make BUILD_WITH_CONTAINER=1
apt-get update && apt-get install -y docker.io
make BUILD_WITH_CONTAINER=1
service docker start
systemctl start docker
dockerd &
make BUILD_WITH_CONTAINER=1
dockerd
search_file BUILD_WITH_CONTAINER=0 Makefile.core.mk
search_file test: Makefile.core.mk
make test
search_file 'go test' Makefile.core.mk
go test ./...
apt-get update && apt-get install -y golang
go version
go test ./...
open "go.mod"
edit 'go 1.23.0' 'go 1.23' False
go test ./...
GOPROXY=direct go test ./...
ping -c 4 github.com
curl -I https://github.com
apt-get update && apt-get install -y curl
curl -I https://github.com
GOPROXY=direct go test ./...
GOPROXY=https://goproxy.io,direct go test ./...
apt-get update && apt-get install -y golang-1.21
export PATH=/usr/lib/go-1.21/bin:$PATH && go version
wget https://dl.google.com/go/go1.23.linux-amd64.tar.gz -O /tmp/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf /tmp/go1.23.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.23.linux-amd64.tar.gz -O /tmp/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf /tmp/go1.23.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
wget https://dl.google.com/go/go1.21.1.linux-amd64.tar.gz -O /tmp/go1.21.1.linux-amd64.tar.gz && tar -C /usr/local -xzf /tmp/go1.21.1.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
tar -C /usr/local -xzf /tmp/go1.21.1.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
wget https://dl.google.com/go/go1.23.linux-amd64.tar.gz -O /tmp/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf /tmp/go1.23.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
wget https://dl.google.com/go/go1.21.1.linux-amd64.tar.gz -O /tmp/go1.21.1.linux-amd64.tar.gz && tar -C /usr/local -xzf /tmp/go1.21.1.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
tar -C /usr/local -xzf /tmp/go1.21.1.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version

