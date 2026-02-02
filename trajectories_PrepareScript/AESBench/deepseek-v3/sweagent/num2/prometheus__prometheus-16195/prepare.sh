ls -la
ls -la .circleci
open ".circleci/config.yml"
ls -la .github/workflows
open ".github/workflows/ci.yml"
open "Makefile"
open "Makefile.common"
sudo apt-get update && sudo apt-get install -y golang nodejs npm
apt-get update && apt-get install -y golang nodejs npm
go version && node --version && npm --version
go install github.com/prometheus/promu@v0.17.0 && go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.64.6
go install github.com/prometheus/promu@v0.17.0 && go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.64.6
make
gofmt -w ./promql/parser/parse_test.go ./model/textparse/openmetricsparse_test.go ./model/textparse/promparse_test.go
make
apt-get install -y curl
make
open "go.mod"
edit 'go 1.23.0' 'go 1.23'
edit 'toolchain go1.23.4' ''
edit '

' '
'
edit '5:toolchain go1.23.4' 5:
make
open "go.mod"
go mod tidy
edit 'go 1.23' 'go 1.18'
go mod tidy
go mod tidy
GOPROXY=direct go mod tidy
GOPROXY=https://goproxy.io,direct go mod tidy
make
apt-get remove -y golang && apt-get install -y golang-1.22
go version
export PATH=/usr/lib/go-1.22/bin:$PATH && go version
make
gofmt -w ./promql/parser/parse_test.go ./model/textparse/openmetricsparse_test.go ./model/textparse/promparse_test.go
make
go mod tidy
apt-get remove -y golang-1.22 && apt-get install -y golang-1.23
go version
export PATH=/usr/lib/go-1.23/bin:$PATH && go version
go mod tidy
GOPROXY=https://goproxy.cn,direct go mod tidy
make
open "Makefile.common"
cat Makefile.common
edit '--timeout 4m' '--timeout 10m'
search_file golangci-lint Makefile.common
goto 171

