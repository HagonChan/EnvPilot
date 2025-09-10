ls -la
ls -la .github/workflows
open "Makefile"
open "Makefile.core.mk"
open "README.md"
open "go.mod"
apt-get update && apt-get install -y gcc make libssl-dev
apt-get install -y golang
go version
export GOPATH=$HOME/go && export PATH=$PATH:$GOPATH/bin
go mod download
edit 'go 1.23.0' 'go 1.23' True
go mod download
make
apt-get install -y docker.io
make
service docker start
systemctl start docker
dockerd &
make
open "Makefile"
export BUILD_WITH_CONTAINER=0
make
apt-get install -y curl
make
apt-get remove -y golang
wget https://go.dev/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y wget
wget https://go.dev/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
export PATH=/usr/local/go/bin:$PATH && go version
rm -rf /usr/bin/go && export PATH=/usr/local/go/bin:$PATH && go version
edit 'go 1.23' 'go 1.21' True
open "go.mod"
edit 'go 1.23' 'go 1.21' True
go version
go mod download
wget https://go.dev/dl/go1.21.1.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.1.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go mod download
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go mod download
edit 'go 1.23' 'go 1.22' True
go mod download
make
go install github.com/jstemmer/go-junit-report@latest
go test ./...
