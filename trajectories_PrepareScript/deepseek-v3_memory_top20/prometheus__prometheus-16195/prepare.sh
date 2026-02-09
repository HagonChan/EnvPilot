ls -la
open "go.mod"
find_file '*.yml' .github/workflows
open ".github/workflows/ci.yml"
open "Makefile"
open "Makefile.common"
wget https://golang.org/dl/go1.23.4.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.4.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget git gcc build-essential
wget https://golang.org/dl/go1.23.4.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.23.4.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
apt-get install -y nodejs npm
node --version && npm --version
npm install
open "Makefile"
cat Makefile
make ui-install
apt-get remove -y nodejs npm && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && apt-get install -y nodejs
node --version && npm --version
make ui-install
make build
make test
go install golang.org/x/tools/cmd/goyacc@latest
wget https://golang.org/dl/go1.24.10.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.10.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
go install golang.org/x/tools/cmd/goyacc@latest
rm -rf /usr/local/go && wget https://golang.org/dl/go1.24.10.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.10.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
go install golang.org/x/tools/cmd/goyacc@latest
make test
