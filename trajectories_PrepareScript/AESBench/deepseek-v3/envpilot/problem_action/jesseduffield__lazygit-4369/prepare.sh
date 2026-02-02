ls -a
ls -a .github
ls -a .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y build-essential ca-certificates curl gettext libexpat1-dev libssl-dev libz-dev openssl
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y wget
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
go mod vendor
go test ./... -short -cover
go test ./...
git config --global user.email "test@example.com" && git config --global user.name "Test User" && go test ./...
