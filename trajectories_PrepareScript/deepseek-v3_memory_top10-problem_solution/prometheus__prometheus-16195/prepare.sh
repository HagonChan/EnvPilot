ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Makefile"
open "Makefile.common"
wget https://go.dev/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -OL https://go.dev/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y curl
curl -OL https://go.dev/dl/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -OL https://dl.google.com/go/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -OL https://golang.org/dl/
apt-get install -y wget
wget https://dl.google.com/go/go1.23.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
wget https://golang.org/dl/ -O golang_dl.html
wget https://dl.google.com/go/go1.23.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
apt-get update && apt-get install -y libsnmp-dev git gcc build-essential
apt-get install -y nodejs npm
node --version && npm --version
curl -fsSL https://deb.nodesource.com/setup_21.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
node --version && npm --version
cd web/ui && npm install
cd /testbed && make build
curl -OL https://dl.google.com/go/go1.23.4.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.4.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
open "Makefile.common"
cat Makefile.common | grep promu
edit 'PROMU_URL     := https://github.com/prometheus/promu/releases/download/v$(PROMU_VERSION)/promu-$(PROMU_VERSION).$(GO_BUILD_PLATFORM).tar.gz' 'PROMU_URL     := https://github.com/prometheus/promu/releases/download/v$(PROMU_VERSION)/promu-$(PROMU_VERSION).linux-amd64.tar.gz'
make build
curl -L https://github.com/prometheus/promu/releases/download/v0.17.0/promu-0.17.0.linux-amd64.tar.gz -o /tmp/promu.tar.gz && tar -xzf /tmp/promu.tar.gz -C /tmp && mv /tmp/promu-0.17.0.linux-amd64/promu /root/go/bin/promu && chmod +x /root/go/bin/promu
curl -L https://github.com/prometheus/promu/releases/download/v0.17.0/promu-0.17.0.linux-amd64.tar.gz -o /tmp/promu.tar.gz --connect-timeout 30 && tar -xzf /tmp/promu.tar.gz -C /tmp && mv /tmp/promu-0.17.0.linux-amd64/promu /root/go/bin/promu && chmod +x /root/go/bin/promu
git clone https://github.com/prometheus/promu.git /tmp/promu && cd /tmp/promu && go build -o /root/go/bin/promu
go build
find . -name "*.go" | head -5
open "Makefile"
cat Makefile
find . -name "main.go" | head -5
cd cmd/prometheus && go build
export GOPROXY=direct && go build
go test
