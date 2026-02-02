ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
curl -OL https://golang.org/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && rm go1.22.0.linux-amd64.tar.gz
apt-get update && apt-get install -y build-essential ca-certificates curl gettext libexpat1-dev libssl-dev libz-dev openssl
curl -OL https://golang.org/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && rm go1.22.0.linux-amd64.tar.gz
curl -OL https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && rm go1.22.0.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin && go version
export GOPATH=$HOME/go && export PATH=$PATH:$GOPATH/bin && mkdir -p $GOPATH
go mod download
go mod download
GOPROXY=direct go mod download
update-ca-certificates && GOPROXY=direct go mod download
go test ./... -short -cover
