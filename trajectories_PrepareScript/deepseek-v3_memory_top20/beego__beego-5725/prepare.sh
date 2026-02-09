ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
scroll_down
wget https://golang.org/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
wget https://golang.org/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
apt-get install -y sqlite3 postgresql-client mysql-client redis-tools memcached etcd
go mod tidy
go test ./...
apt-get install -y liblz4-dev
service redis-server start
redis-server --daemonize yes
find / -name redis-server 2>/dev/null
apt-get install -y redis-server
redis-server --daemonize yes
go test ./...
go get github.com/pierrec/lz4/v4
wget https://github.com/pierrec/lz4/archive/refs/tags/v4.1.22.tar.gz && tar -xzf v4.1.22.tar.gz && cd lz4-4.1.22 && go install ./...
go install ./...
cd /testbed && go test ./...
go list -m github.com/pierrec/lz4/v4
go get github.com/pierrec/lz4/v4
go test ./...
rm -rf /usr/local/go && wget https://golang.org/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
go get github.com/pierrec/lz4/v4
go test ./...
rm -rf /usr/local/go && wget https://golang.org/dl/go1.20.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
rm -rf /usr/local/go && wget https://golang.org/dl/go1.20.12.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.12.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
go get github.com/pierrec/lz4/v4
go test ./...
mkdir -p conf && echo "path2 = /home/go" > conf/app.conf
go test ./...
cat conf/app.conf
echo "path1 = /home/go" >> conf/app.conf && echo "path2 = /home/go" >> conf/app.conf && echo "path3 = /home/go" >> conf/app.conf
go test ./...
go doc github.com/pierrec/lz4/v4
go get -u github.com/pierrec/lz4/v4
go test ./...
rm -rf /usr/local/go && wget https://golang.org/dl/go1.19.13.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.13.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
go get github.com/pierrec/lz4/v4
go test ./...
apt-get install -y gcc
rm -rf /usr/local/go && wget https://golang.org/dl/go1.20.12.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.20.12.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version

