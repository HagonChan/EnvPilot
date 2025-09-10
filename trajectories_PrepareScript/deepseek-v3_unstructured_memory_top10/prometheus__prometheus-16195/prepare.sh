ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Makefile"
open "Makefile.common"
wget https://go.dev/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
curl -LO https://go.dev/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y curl
curl -LO https://go.dev/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
curl -LO https://go.dev/dl/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
apt-get install -y npm
npm --version
go mod download
npm install
find . -name package.json
cd web/ui && npm install
cd /testbed && make GOOPTS=--tags=stringlabels GO_ONLY=1 SKIP_GOLANGCI_LINT=1
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y --purge libnode72 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
rm -f /usr/share/systemtap/tapset/node.stp && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
cd /testbed && make GOOPTS=--tags=stringlabels GO_ONLY=1 SKIP_GOLANGCI_LINT=1
cd /testbed && go test --tags=stringlabels ./tsdb/ -test.tsdb-isolation=false
cd /testbed && go test --tags=stringlabels ./...
