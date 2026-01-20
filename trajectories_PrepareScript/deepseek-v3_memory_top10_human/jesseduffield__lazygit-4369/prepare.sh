ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "README.md"
open "Makefile"
apt-get update && apt-get install -y build-essential cmake libssl-dev libexpat1-dev libz-dev
apt-get install -y golang
go version && cmake --version && make --version
make build
go mod vendor
make build
go mod tidy
apt-get remove -y golang && apt-get install -y golang-1.22
go version
export PATH=/usr/lib/go-1.22/bin:$PATH && go version
go mod tidy
make build
make test
git config --global user.email "test@example.com" && git config --global user.name "Test User"
make test
