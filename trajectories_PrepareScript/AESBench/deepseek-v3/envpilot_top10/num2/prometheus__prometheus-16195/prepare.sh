ls -la
open "README.md"
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y golang
go version
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get install -y wget
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
/usr/local/go/bin/go version
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get install -y git gcc build-essential
apt-get install -y libsnmp-dev
npm install
find_file package.json
cd web/ui && npm install
cd /testbed && make build
make test
go install golang.org/x/tools/cmd/goyacc@latest
make test
