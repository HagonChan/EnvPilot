ls -la
ls -la .github/workflows
open ".github/workflows/build-syncthing.yaml"
open "go.mod"
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y curl git gcc make
curl -LO https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go install calmh.dev/go-test-json-to-loki@latest
go install calmh.dev/go-test-json-to-loki@latest
go run build.go
go run build.go test | go-test-json-to-loki
ls -la $(go env GOPATH)/bin
export PATH=$(go env GOPATH)/bin:$PATH && go run build.go test | go-test-json-to-loki
go run build.go test
go test -json ./... | go-test-json-to-loki
