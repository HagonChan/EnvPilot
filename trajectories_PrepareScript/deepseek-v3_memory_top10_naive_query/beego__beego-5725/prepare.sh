ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "go.mod"
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
apt-get install -y redis-server memcached ssdb postgresql etcd
apt-get install -y redis-server memcached postgresql etcd
apt-get install -y software-properties-common && add-apt-repository -y ppa:ssdb/ppa && apt-get update && apt-get install -y ssdb
go mod download
go test ./...
apt-get install -y liblz4-dev
service redis-server start
service redis-server status
go test ./...
go get github.com/pierrec/lz4/v4
go test ./...
open "go.mod"
edit 'github.com/cloudflare/golz4 v0.0.0-20150217214814-ef862a3cdc58' 'github.com/pierrec/lz4/v4 v4.1.22' True
go mod download
go test ./...
open "core/logs/alils/log_store.go"
edit 'lz4 "github.com/cloudflare/golz4"' 'lz4 "github.com/pierrec/lz4/v4"' True
edit 'out := make([]byte, lz4.CompressBound(body))
	n, err := lz4.Compress(body, out)' 'out := make([]byte, lz4.CompressBlockBound(len(body)))
	n, err := lz4.CompressBlock(body, out, nil)' True
open "core/logs/alils/log_store.go" 83
edit 'out := make([]byte, lz4.CompressBound(body))
	n, err := lz4.Compress(body, out)' 'out := make([]byte, len(body))
	n, err := lz4.CompressBlock(body, out, nil)' True
open "core/logs/alils/log_store.go" 83
edit 'out := make([]byte, lz4.CompressBound(body))
	n, err := lz4.Compress(body, out)' 'out := make([]byte, lz4.CompressBlockBound(len(body)))
	n, err := lz4.CompressBlock(body, out, nil)' True
open "core/logs/alils/log_store.go" 83
open "core/logs/alils/log_store.go" 83
open "core/logs/alils/log_store.go" 83
open "core/logs/alils/log_store.go" 83
open "core/logs/alils/log_store.go" 83
open "core/logs/alils/log_store.go" 83
open "core/logs/alils/log_store.go" 83
open "core/logs/alils/log_store.go" 83
open "core/logs/alils/log_store.go" 83
open "core/logs/alils/log_store.go" 83
open "core/logs/alils/log_store.go" 83
open "core/logs/alils/log_store.go" 83
open "core/logs/alils/log_store.go" 83
open "core/logs/alils/log_store.go" 83
open "core/logs/alils/log_store.go" 83
open "core/logs/alils/log_store.go" 83
open "core/logs/alils/log_store.go" 83
open "core/logs/alils/log_store.go" 83
open "core/logs/alils/log_store.go" 83

