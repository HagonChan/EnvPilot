
ls -R
open "Makefile" 1
open "common/scripts/setup_env.sh" 1
apt-get update && apt-get install -y golang make git curl wget gcc libssl-dev ca-certificates
export GOPATH=$HOME/go && export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin && go version
go mod download
open "go.mod" 1
edit 'go 1.23.0' 'go 1.23'
go mod download
go test ./...
rm -rf /usr/local/go && wget https://go.dev/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
rm -rf /usr/local/go && wget https://go.dev/dl/go1.20.12.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.12.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
go version
go mod download
go test ./...

