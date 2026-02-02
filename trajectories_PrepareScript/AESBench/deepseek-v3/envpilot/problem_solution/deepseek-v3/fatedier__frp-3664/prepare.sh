ls -la
ls -la .github/workflows
open ".github/workflows/build-and-push-image.yml"
open "Makefile"
go version
wget https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz -O /tmp/go1.21.0.linux-amd64.tar.gz
curl -L https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz -o /tmp/go1.21.0.linux-amd64.tar.gz
apt-get update && apt-get install -y curl
curl -L https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz -o /tmp/go1.21.0.linux-amd64.tar.gz
tar -C /usr/local -xzf /tmp/go1.21.0.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
go mod download
export GOPROXY=direct
go mod download
export GIT_SSL_NO_VERIFY=1
go mod download
mkdir -p $GOPATH/src/golang.org/x && cd $GOPATH/src/golang.org/x && git clone https://github.com/golang/crypto.git
cd /testbed && go mod download
export GOPROXY=https://proxy.golang.org
go mod download
cd $GOPATH/src/golang.org/x && git clone https://github.com/golang/net.git && git clone https://github.com/golang/sys.git && git clone https://github.com/golang/text.git
cd /testbed && go mod download
cd /testbed && go build
ls -la
make build
apt-get install -y make
make build
export GOPROXY=direct && make build
make test
