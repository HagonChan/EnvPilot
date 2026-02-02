ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
apt-get update && apt-get install -y golang-1.22
go version
ls -la /usr/lib/go-1.22/bin
export PATH=$PATH:/usr/lib/go-1.22/bin && go version
apt-get install -y build-essential ca-certificates curl gettext libexpat1-dev libssl-dev libz-dev openssl
go mod vendor
go test ./... -short -cover

