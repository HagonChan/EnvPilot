ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
go version
apt-get update
apt-get install -y golang
apt-get remove -y golang golang-go golang-src golang-doc
wget https://go.dev/dl/go1.22.1.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.1.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get install -y wget
wget https://go.dev/dl/go1.22.1.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.1.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
apt-get install -y build-essential ca-certificates curl gettext libexpat1-dev libssl-dev libz-dev openssl git
open "go.mod"
go mod download
go test ./... -short -cover
go test ./...
find_file clients_test.go pkg/integration/clients
ls -la pkg/integration/clients
open "pkg/integration/clients/go_test.go"
go test -v github.com/jesseduffield/lazygit/pkg/integration/clients
git config --global user.email "test@example.com" && git config --global user.name "Test User"
go test ./...
