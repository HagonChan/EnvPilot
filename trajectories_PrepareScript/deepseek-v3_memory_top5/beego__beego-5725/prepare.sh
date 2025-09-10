ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
scroll_down
wget https://golang.org/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
wget https://golang.org/dl/go1.22.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
apt-get install -y redis memcached ssdb postgresql etcd gcc make
apt-get install -y redis memcached postgresql etcd gcc make
go get ./...
mkdir -p /tmp/sqlite3 && touch /tmp/sqlite3/orm_test.db && go test -coverprofile=coverage_sqlite3.txt -covermode=atomic $(go list ./... | grep client/orm)
export ORM_DRIVER=sqlite3 && export ORM_SOURCE='file:memory_test?mode=memory' && go test -v github.com/beego/beego/v2/client/orm
psql -c 'create database orm_test;' -U postgres && export ORM_DRIVER=postgres && export ORM_SOURCE="user=postgres dbname=orm_test sslmode=disable" && go test -v github.com/beego/beego/v2/client/orm
service postgresql start
psql -c 'create database orm_test;' -U postgres && export ORM_DRIVER=postgres && export ORM_SOURCE="user=postgres dbname=orm_test sslmode=disable" && go test -v github.com/beego/beego/v2/client/orm
sed -i 's/local   all             postgres                                peer/local   all             postgres                                trust/' /etc/postgresql/14/main/pg_hba.conf && service postgresql restart
psql -c 'create database orm_test;' -U postgres && export ORM_DRIVER=postgres && export ORM_SOURCE="user=postgres dbname=orm_test sslmode=disable" && go test -v github.com/beego/beego/v2/client/orm
psql -c "ALTER USER postgres WITH PASSWORD 'postgres';" -U postgres && export ORM_DRIVER=postgres && export ORM_SOURCE="user=postgres password=postgres dbname=orm_test sslmode=disable" && go test -v github.com/beego/beego/v2/client/orm
apt-get install -y mysql-server && service mysql start
mysql -u root -proot -e 'create database orm_test;' && export ORM_DRIVER=mysql && export ORM_SOURCE="root:root@/orm_test?charset=utf8" && go test -v github.com/beego/beego/v2/client/orm
