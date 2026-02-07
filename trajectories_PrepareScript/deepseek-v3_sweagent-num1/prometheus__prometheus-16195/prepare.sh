ls -la
ls -la .github/workflows/
open ".github/workflows/ci.yml"
open "Makefile"
open "Makefile.common"
go mod download
apt-get update && apt-get install -y golang
go version
make ui-install
apt-get install -y make
make ui-install
apt-get install -y nodejs npm
make ui-install
apt-get remove -y nodejs npm && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode72 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y --purge libnode72 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
dpkg -i --force-overwrite /var/cache/apt/archives/nodejs_18.20.6-1nodesource1_amd64.deb
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y --download-only nodejs && dpkg -i --force-overwrite /var/cache/apt/archives/nodejs_18.20.6-1nodesource1_amd64.deb
node --version && npm --version
make ui-install
make
gofmt -w ./model/textparse/promparse_test.go ./model/textparse/openmetricsparse_test.go ./promql/parser/parse_test.go
make
open "go.mod"
edit 'go 1.23.0' 'go 1.23'
edit 'toolchain go1.23.4' ''
make
go mod tidy
edit 'go 1.23' 'go 1.18'
go mod tidy
make
apt-get remove -y golang && curl -fsSL https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz | tar -C /usr/local -xzf - && export PATH=$PATH:/usr/local/go/bin
go version
export PATH=/usr/local/go/bin:$PATH && go version
edit 'go 1.18' 'go 1.22'
go mod tidy
curl -fsSL https://dl.google.com/go/go1.23.10.linux-amd64.tar.gz | tar -C /usr/local -xzf - && export PATH=$PATH:/usr/local/go/bin
go version
go mod tidy
make
gofmt -w ./model/textparse/promparse_test.go ./model/textparse/openmetricsparse_test.go ./promql/parser/parse_test.go
make
export GOROOT=/usr/local/go && make
make SKIP_GOLANGCI_LINT=1
edit 'toolchain go1.23.10' ''

