ls -la
ls -la .github
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y build-essential ca-certificates curl gettext libexpat1-dev libssl-dev libz-dev openssl
wget https://dl.google.com/go/go1.22.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
curl -O https://dl.google.com/go/go1.22.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
ls -la
rm go1.22.linux-amd64.tar.gz && curl -O https://dl.google.com/go/go1.22.linux-amd64.tar.gz
curl -O https://golang.org/dl/go1.22.linux-amd64.tar.gz
ls -la
curl -O https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go mod vendor
go test ./...
