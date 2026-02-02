ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "go.mod"
go version
sudo apt-get update
apt-get update
apt-get install -y golang
go version
wget https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz
apt-get install -y wget
wget https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
echo $PATH
/usr/local/go/bin/go version
export GOPROXY=direct
/usr/local/go/bin/go version
/usr/local/go/bin/go version
rm -rf /usr/local/go
tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz
/usr/local/go/bin/go version
export GOPROXY=https://proxy.golang.org
/usr/local/go/bin/go version
export GOPROXY=direct
/usr/local/go/bin/go version
wget https://dl.google.com/go/go1.23.0.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz
/usr/local/go/bin/go version
export PATH=/usr/local/go/bin:$PATH
go version
go get -v -t -d ./...
go get -v -t -d ./...
export GOPROXY=direct
go get -v -t -d ./...
export GOPROXY=https://proxy.golang.org
go get -v -t -d ./...
echo $GOPATH
export GOPATH=$HOME/go
mkdir -p $GOPATH/src/golang.org/x
git clone https://github.com/golang/crypto.git $GOPATH/src/golang.org/x/crypto
go get -v -t -d ./...
go build -v ./cmd/caddy
export GOPROXY=direct
go build -v ./cmd/caddy
mkdir -p $GOPATH/src/google.golang.org
git clone https://github.com/grpc/grpc-go.git $GOPATH/src/google.golang.org/grpc

