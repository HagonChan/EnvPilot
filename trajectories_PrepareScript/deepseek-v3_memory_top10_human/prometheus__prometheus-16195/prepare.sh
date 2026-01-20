ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "README.md"
apt-get update && apt-get install -y build-essential golang nodejs npm
go version && node --version && npm --version
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -xzf go1.22.0.linux-amd64.tar.gz && sudo mv go /usr/local
apt-get install -y wget
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -xzf go1.22.0.linux-amd64.tar.gz && sudo mv go /usr/local
mv go /usr/local
export PATH=$PATH:/usr/local/go/bin
go version
export GOROOT=/usr/local/go && export PATH=$GOROOT/bin:$PATH
go version
apt-get remove -y nodejs npm
curl -fsSL https://deb.nodesource.com/setup_22.x | bash -
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash -
apt-get install -y nodejs
apt-get remove -y libnode-dev
apt-get install -y nodejs
node --version && npm --version
apt-get install -y libssl-dev libyaml-dev flex bison
make build
make test
go install golang.org/x/tools/cmd/goyacc@latest
make test
