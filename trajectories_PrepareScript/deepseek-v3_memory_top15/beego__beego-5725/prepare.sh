ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "go.mod"
open "Makefile"
open "README.md"
wget https://golang.org/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
wget https://golang.org/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
apt-get install -y gcc make redis-server memcached ssdb postgresql etcd
apt-get install -y gcc make redis-server memcached postgresql etcd
go mod download
make test-orm-pgsql
apt-get install -y docker-compose
make test-orm-pgsql
service docker start
systemctl start docker
dockerd
docker --version
sudo dockerd
dockerd
apt-get install -y iptables
go test ./...
service redis-server start
service memcached start
service postgresql start
service etcd start
go test ./...
