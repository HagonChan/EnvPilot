ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "README.md"
apt-get update && apt-get install -y gcc g++ make cmake libssl-dev libyaml-dev
wget https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz && tar -xzf go1.22.3.linux-amd64.tar.gz && mv go /usr/local
apt-get install -y wget
wget https://dl.google.com/go/go1.22.3.linux-amd64.tar.gz && tar -xzf go1.22.3.linux-amd64.tar.gz && mv go /usr/local
export PATH=$PATH:/usr/local/go/bin && go version
gcc --version && g++ --version && make --version && cmake --version && go version
open "Makefile"
go build
open ".github/workflows/ci.yml"
go test ./...
