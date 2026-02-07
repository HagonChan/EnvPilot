ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "README.md"
open "Makefile"
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
apt-get install -y sqlite3 postgresql-client mysql-client redis-tools memcached etcd
go mod tidy
go test ./...
apt-get install -y liblz4-dev
service redis-server start
apt-get install -y redis-server
redis-server --daemonize yes
redis-cli ping
go test ./...
apt-get install -y liblz4-tool liblz4-dev
mkdir -p conf && echo -e "appname = beego\nrunmode = dev" > conf/app.conf
go test ./...
go get github.com/pierrec/lz4/v4
echo -e "appname = beego\nrunmode = dev\nhttpport = 8080\napppath = /home/go" > conf/app.conf
go test ./...
open "core/logs/alils/log_store.go"
go get github.com/cloudflare/golz4
go test ./...
open "go.mod"
go list -m github.com/cloudflare/golz4
go get -u github.com/cloudflare/golz4
go test ./...
open "core/logs/alils/log_store.go"
go get -u github.com/cloudflare/golz4
go test ./...
go doc github.com/cloudflare/golz4
go list -m -versions github.com/cloudflare/golz4
go get -u github.com/cloudflare/golz4
go test ./...
go doc github.com/cloudflare/golz4
go list -m -versions github.com/cloudflare/golz4
go get -u github.com/cloudflare/golz4
go test ./...
go doc github.com/cloudflare/golz4
go list -m -versions github.com/cloudflare/golz4
go get -u github.com/cloudflare/golz4
go test ./...
go doc github.com/cloudflare/golz4
go list -m -versions github.com/cloudflare/golz4
go get -d github.com/cloudflare/golz4 && cd $GOPATH/src/github.com/cloudflare/golz4 && ls

