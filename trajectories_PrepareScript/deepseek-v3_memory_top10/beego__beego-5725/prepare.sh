ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
apt-get update && apt-get install -y gcc g++ cmake make libssl-dev libyaml-dev
open "README.md"
go version
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -xzf go1.22.0.linux-amd64.tar.gz && mv go /usr/local
apt-get install -y wget
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -xzf go1.22.0.linux-amd64.tar.gz && mv go /usr/local
export PATH=$PATH:/usr/local/go/bin && go version
go mod download
ls -la
open "Makefile"
docker --version
apt-get install -y docker.io docker-compose
docker --version
make test-orm-all
service docker start
systemctl start docker
dockerd
dockerd --iptables=false
open "Makefile"
go test ./...
make fmt
go install golang.org/x/tools/cmd/goimports@latest
make fmt
export PATH=$PATH:$(go env GOPATH)/bin && make fmt
