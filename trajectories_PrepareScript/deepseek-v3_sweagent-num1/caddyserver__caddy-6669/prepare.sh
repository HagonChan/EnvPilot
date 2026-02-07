ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
go version
go get -v -t -d ./...
cd ./cmd/caddy && CGO_ENABLED=0 go build
open "./cmd/caddy/main.go"
ls -la
open "./cmd/caddy/main.go"
open "/home/caddy/cmd/caddy/main.go"
edit '//go:debug tlskyber=1' '// //go:debug tlskyber=1'
CGO_ENABLED=0 go build
cd /home/caddy && go test ./...
go test -v ./...
go test -v github.com/caddyserver/caddy/v2/modules/logging github.com/caddyserver/caddy/v2/modules/metrics
go test -race ./...
go test -v ./... > test_output.txt 2>&1
open "test_output.txt"
search_file FAIL test_output.txt
search_file error test_output.txt
go test ./... || echo "Tests failed"
