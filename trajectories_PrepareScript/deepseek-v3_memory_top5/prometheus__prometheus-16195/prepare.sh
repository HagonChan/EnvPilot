ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "go.mod"
wget https://golang.org/dl/go1.23.4.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.4.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
wget https://golang.org/dl/go1.23.4.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.4.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
go get ./...
go test --tags=stringlabels ./tsdb/ -test.tsdb-isolation=false
make GOOPTS=--tags=stringlabels GO_ONLY=1 SKIP_GOLANGCI_LINT=1
apt-get update && apt-get install -y make
make GOOPTS=--tags=stringlabels GO_ONLY=1 SKIP_GOLANGCI_LINT=1
apt-get update && apt-get install -y npm
apt-get update && apt-get install -y npm --fix-missing
sed -i 's|http://mirrors.aliyun.com/ubuntu|http://archive.ubuntu.com/ubuntu|g' /etc/apt/sources.list && apt-get update && apt-get install -y npm
apt --fix-broken install
apt-get install -y node-indent-string
npm --version
make GOOPTS=--tags=stringlabels GO_ONLY=1 SKIP_GOLANGCI_LINT=1
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get update && apt-get install -y curl
sed -i '/security.ubuntu.com/d' /etc/apt/sources.list && apt-get update && apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
apt-get remove -y libnode72 && apt-get install -y nodejs
dpkg --force-all -r libnode72 && apt-get install -y nodejs
node --version && npm --version
make GOOPTS=--tags=stringlabels GO_ONLY=1 SKIP_GOLANGCI_LINT=1
wget https://github.com/prometheus/promu/releases/download/v0.17.0/promu-0.17.0.linux-amd64.tar.gz && tar -xvzf promu-0.17.0.linux-amd64.tar.gz -C /usr/local/bin/
make GOOPTS=--tags=stringlabels GO_ONLY=1 SKIP_GOLANGCI_LINT=1
ls -la build
ls -la bin
