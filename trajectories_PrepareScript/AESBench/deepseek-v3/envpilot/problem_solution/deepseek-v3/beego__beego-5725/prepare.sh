ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "Makefile"
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz -O /tmp/go1.22.0.linux-amd64.tar.gz
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.22.0.linux-amd64.tar.gz -O /tmp/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf /tmp/go1.22.0.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
apt-get install -y sqlite3 postgresql-client mysql-client redis-server memcached ssdb etcd
apt-get install -y sqlite3 postgresql-client mysql-client redis-server memcached etcd
apt-get install -y docker.io
docker --version
go mod tidy
go mod tidy
export GOPROXY=https://goproxy.cn,direct && go mod tidy
make test-orm-mysql5
apt-get install -y make
make test-orm-mysql5
apt-get install -y docker-compose
make test-orm-mysql5
service docker start
systemctl start docker
dockerd
dockerd --iptables=false
go test ./...
go get github.com/pierrec/lz4/v4
go test ./...
go test -v ./... | grep -v "FAIL\|Error\|could not create manager\|dial tcp"
