ls -la
ls -la .github/workflows
open "Makefile"
open "Makefile.core.mk"
search_file test Makefile.core.mk
open "go.mod"
open "VERSION"
wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
echo $PATH
which go
ls -la /usr/local/go/bin/go
rm -rf /usr/local/go /usr/lib/go /usr/local/bin/go && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
find / -name go 2>/dev/null
go clean -modcache && export PATH=/usr/local/go/bin:$PATH
go version
export GOROOT=/usr/local/go && export PATH=$GOROOT/bin:$PATH && go version
wget https://golang.org/dl/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go mod download
make test
apt-get update && apt-get install -y make
make test
open "Makefile"
search_file test Makefile.core.mk
go test -race ./...
export CGO_ENABLED=1 && go test -race ./...
