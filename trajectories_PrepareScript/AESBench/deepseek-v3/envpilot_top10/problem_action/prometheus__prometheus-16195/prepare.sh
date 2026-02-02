ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y libsnmp-dev git gcc build-essential
wget https://dl.google.com/go/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y wget
wget https://dl.google.com/go/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
cat package.json
find_file package.json
open "/testbed/web/ui/package.json"
apt-get install -y nodejs npm
cd web/ui && npm install
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm install
cd /testbed && make GOOPTS=--tags=stringlabels GO_ONLY=1 SKIP_GOLANGCI_LINT=1
