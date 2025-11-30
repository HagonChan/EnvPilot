ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
apt-get update
apt-get install -y sqlite3 postgresql-client mysql-client redis-tools memcached etcd
wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -LO https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y curl
curl -LO https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/go/bin
go version
go mod tidy
go test ./...
service redis-server start
redis-cli ping
which redis-server
apt-get install -y redis-server
service redis-server start
go test ./...
open "go.mod"
go mod tidy
go test ./...
edit 'require (' 'require (
	github.com/pierrec/lz4 v2.0.0'
search_file 'require (' go.mod
edit 'require (' 'require (
	github.com/cloudflare/golz4 v0.0.0-20150217214814-ef862a3cdc58' False
go mod tidy
go test ./...
open "go.mod"
edit 'require (' 'require (
	github.com/pierrec/lz4 v2.0.0' False
go mod tidy
edit 'github.com/pierrec/lz4 v2.0.0' 'github.com/pierrec/lz4 v1.0.0' True
go mod tidy
edit 'github.com/pierrec/lz4 v1.0.0' '' True
go mod tidy
go test ./...
open "go.mod"
go get github.com/cloudflare/golz4
go test ./...

