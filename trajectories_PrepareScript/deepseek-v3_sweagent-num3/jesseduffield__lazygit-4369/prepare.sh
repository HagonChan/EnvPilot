ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
go version
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz -O /tmp/go1.22.0.linux-amd64.tar.gz
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz -O /tmp/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf /tmp/go1.22.0.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin && go version
apt-get update && apt-get install -y build-essential ca-certificates curl gettext libexpat1-dev libssl-dev libz-dev openssl
go test ./... -short -cover
