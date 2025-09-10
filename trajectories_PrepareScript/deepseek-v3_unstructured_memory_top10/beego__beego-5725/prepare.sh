ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && sudo tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -OL https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && sudo tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y curl
curl -OL https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && sudo tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
curl -OL https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
apt-get install -y redis-server
apt-get install -y memcached
apt-get install -y ssdb
git clone https://github.com/ideawu/ssdb.git && cd ssdb && make
apt-get install -y build-essential
cd ssdb && make
make
apt-get install -y autoconf
make
apt-get install -y postgresql
apt-get install -y etcd
systemctl status redis-server
ps aux | grep redis-server
redis-server --daemonize yes
ps aux | grep memcached
memcached -d
memcached -d -u nobody
ps aux | grep postgres
service postgresql start
ps aux | grep etcd
etcd &
ps aux | grep -E 'redis|memcached|postgres|etcd'
cd /testbed && GO111MODULE=on go mod download
go test ./...
ps aux | grep ssdb
cd /testbed/ssdb && ./ssdb-server -d ssdb.conf
netstat -tuln | grep 8888
ss -tuln | grep 8888
apt-get install -y net-tools
netstat -tuln | grep 8888
cd /testbed && go test ./...
mkdir -p conf && echo "path2 = /home/go" > conf/app.conf
go test ./...
echo "path2 = " > conf/app.conf
go test ./...
echo "path2 = /home/go" > conf/app.conf
go test ./...
echo "path2 = " > conf/app.conf
go test ./...
echo "path2 = /home/go
path2 = " > conf/app.conf

