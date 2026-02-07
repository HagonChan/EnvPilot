ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
wget https://go.dev/dl/go1.23.0.linux-amd64.tar.gz && rm -rf /usr/local/go && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
wget https://go.dev/dl/go1.23.0.linux-amd64.tar.gz && rm -rf /usr/local/go && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y golang
go version
wget https://dl.google.com/go/go1.23.0.linux-amd64.tar.gz -O /tmp/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf /tmp/go1.23.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
wget https://golang.org/dl/go1.22.0.linux-amd64.tar.gz -O /tmp/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf /tmp/go1.22.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
add-apt-repository -y ppa:longsleep/golang-backports && apt-get update && apt-get install -y golang-1.23
apt-get install -y software-properties-common
add-apt-repository -y ppa:longsleep/golang-backports && apt-get update && apt-get install -y golang-1.23
/usr/lib/go-1.23/bin/go version && export PATH=/usr/lib/go-1.23/bin:$PATH
apt-get install -y libsnmp-dev git gcc build-essential
apt-get install -y nodejs npm
node --version && npm --version
open "package.json"
find_file package.json
open "web/ui/package.json"
cat web/ui/package.json
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
apt-get purge -y nodejs npm && apt-get autoremove -y && apt-get install -y nodejs
node --version && npm --version
cd web/ui && npm install
cd .. && make GOOPTS=--tags=stringlabels GO_ONLY=1 SKIP_GOLANGCI_LINT=1
cd /testbed && make GOOPTS=--tags=stringlabels GO_ONLY=1 SKIP_GOLANGCI_LINT=1
make GOOPTS=--tags=stringlabels GO_ONLY=1 SKIP_GOLANGCI_LINT=1
export GOPROXY=https://goproxy.io && make GOOPTS=--tags=stringlabels GO_ONLY=1 SKIP_GOLANGCI_LINT=1
make GOOPTS=--tags=stringlabels GO_ONLY=1 SKIP_GOLANGCI_LINT=1
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
node --version && npm --version
cd web/ui && rm -rf node_modules && npm install
cd /testbed && make GOOPTS=--tags=stringlabels GO_ONLY=1 SKIP_GOLANGCI_LINT=1
make GOOPTS=--tags=stringlabels GO_ONLY=1 SKIP_GOLANGCI_LINT=1
cd /testbed && make GOOPTS=--tags=stringlabels GO_ONLY=1 SKIP_GOLANGCI_LINT=1
