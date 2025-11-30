ls -la
ls -la .circleci
open ".circleci/config.yml"
ls -la package.json
open "README.md"
apt-get update && apt-get install -y git gcc build-essential libsnmp-dev
wget https://golang.org/dl/go1.22.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -LO https://golang.org/dl/go1.22.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y curl
curl -LO https://golang.org/dl/go1.22.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -LO https://golang.org/dl/go1.22.0.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
node -v
apt-get install -y nodejs npm
npm install
go install ./...
go test ./...
