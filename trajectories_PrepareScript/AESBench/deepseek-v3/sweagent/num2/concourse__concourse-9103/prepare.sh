ls -la
ls -la .github/workflows
open "README.md"
open "go.mod"
ls -la | grep -i Makefile
ls -la | grep -E 'setup.py|pyproject.toml|tox.ini'
go version
sudo apt-get update && sudo apt-get install -y golang-1.24
apt-get update && apt-get install -y golang-1.24
apt-get install -y golang
go version
go mod download
open "go.mod"
edit 'toolchain go1.24.0' '' True
go mod download
go mod download
GOPROXY=direct go mod download
edit 'require (' 'exclude al.essio.dev/pkg/shellescape v1.5.1
require (' False
go mod download
GOPROXY=https://goproxy.io go mod download
go build ./...
go mod tidy
edit 'go 1.24' 'go 1.18' False
go mod tidy
go build ./...
go test ./...
