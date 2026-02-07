ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
scroll_down
sudo apt-get update && sudo apt-get install -y golang
apt-get update && apt-get install -y golang
go version
go install github.com/magefile/mage@v1.15.0
go install github.com/magefile/mage@v1.15.0
git clone https://github.com/magefile/mage && cd mage && go install
go build
open "go.mod"
edit 'go 1.23.0' 'go 1.23'
goto 175
goto 1
search_file 1.23.0
edit 'go 1.23.0' 'go 1.23'
goto 175
edit 'go 1.23.0' 'go 1.23' False
go build
export GOPROXY=https://goproxy.io && go build
apt-get install -y golang-1.23
/usr/lib/go-1.23/bin/go version
export PATH=/usr/lib/go-1.23/bin:$PATH
go build
go mod tidy
go build
find . -name "*_test.go"
go test ./...
