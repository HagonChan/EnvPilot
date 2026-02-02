find_file '.github/workflows/*.yml'
find_file go.mod
open "/testbed/go.mod"
find_file README.md
open "/testbed/README.md"
go version
apt-get update && apt-get install -y golang-1.20
export PATH=$PATH:/usr/lib/go-1.20/bin && go version
apt-get install -y sqlite3 postgresql-client mysql-client redis-tools memcached etcd
go mod tidy
go test ./...
service memcached start && service redis-server start
redis-server --version
apt-get install -y redis-server
redis-server --daemonize yes
service memcached status && redis-cli ping
mkdir -p conf && echo "appname = testbed" > conf/app.conf
go test ./...
echo "appname = testbed
path2 = /home/go" > conf/app.conf
go test ./...
open "/testbed/client/cache/file_test.go"
mkdir -p /tmp/beego_cache && echo "CachePath = /tmp/beego_cache" >> conf/app.conf
go test ./...
open "/testbed/client/cache/file_test.go"
mkdir -p /tmp/beego_cache && echo "CachePath = /tmp/beego_cache" >> conf/app.conf
go test ./...
open "/testbed/client/cache/file_test.go"
mkdir -p /tmp/beego_cache && echo "CachePath = /tmp/beego_cache" >> conf/app.conf
go test ./...
open "/testbed/client/cache/file_test.go"
mkdir -p /tmp/beego_cache && echo "CachePath = /tmp/beego_cache" >> conf/app.conf
go test ./...
open "/testbed/client/cache/file_test.go"
mkdir -p /tmp/beego_cache && echo "CachePath = /tmp/beego_cache" >> conf/app.conf
go test ./...
open "/testbed/client/cache/file_test.go"
mkdir -p /tmp/beego_cache && echo "CachePath = /tmp/beego_cache" >> conf/app.conf
go test ./...
open "/testbed/client/cache/file_test.go"
mkdir -p /tmp/beego_cache && echo "CachePath = /tmp/beego_cache" >> conf/app.conf
go test ./...
open "/testbed/client/cache/file_test.go"
mkdir -p /tmp/beego_cache && echo "CachePath = /tmp/beego_cache" >> conf/app.conf
go test ./...
open "/testbed/client/cache/file_test.go"
mkdir -p /tmp/beego_cache && echo "CachePath = /tmp/beego_cache" >> conf/app.conf
go test ./...
open "/testbed/client/cache/file_test.go"
mkdir -p /tmp/beego_cache && echo "CachePath = /tmp/beego_cache" >> conf/app.conf

