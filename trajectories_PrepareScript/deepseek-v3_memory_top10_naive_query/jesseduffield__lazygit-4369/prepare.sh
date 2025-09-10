ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y wget build-essential ca-certificates curl gettext libexpat1-dev libssl-dev libz-dev openssl
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go mod download
go test ./... -short -cover
