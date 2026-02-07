ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
go version
apt-get update && apt-get install -y golang-1.19
wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz -O /tmp/go1.19.tar.gz && tar -C /usr/local -xzf /tmp/go1.19.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get install -y wget
wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz -O /tmp/go1.19.tar.gz && tar -C /usr/local -xzf /tmp/go1.19.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
ls -la tests/
cd tests && ./tests_all.sh
go mod download
export GOPROXY=direct && go mod download
ping -c 4 github.com
apt-get install -y iputils-ping
ping -c 4 github.com
export GOPROXY=https://proxy.golang.org && go mod download
export GOPROXY=https://goproxy.io && go mod download
cd tests && ./tests_all.sh
./tests_all.sh
go mod tidy
./tests_all.sh
apt-get install -y gcc
./tests_all.sh
which mysqld
apt-get install -y mysql-server
service mysql start
mysqladmin ping
./tests_all.sh
open "tests/tests_test.go"
find_file tests_test.go
open "tests/tests_test.go"
ls -la
open "tests/tests_test.go"
open "/testbed/tests/tests_test.go"
edit 'mysqlDSN     = "gorm:gorm@tcp(localhost:9910)/gorm?charset=utf8&amp;parseTime=True&amp;loc=Local"' 'mysqlDSN     = "gorm:gorm@tcp(localhost:3306)/gorm?charset=utf8&amp;parseTime=True&amp;loc=Local"'
open "/testbed/tests/tests_test.go" 21
edit 'mysqlDSN     = "gorm:gorm@tcp(localhost:9910)/gorm?charset=utf8&amp;parseTime=True&amp;loc=Local"' 'mysqlDSN     = "gorm:gorm@tcp(localhost:3306)/gorm?charset=utf8&amp;parseTime=True&amp;loc=Local"'
edit 'mysqlDSN     = "gorm:gorm@tcp(localhost:9910)/gorm?charset=utf8&parseTime=True&loc=Local"' 'mysqlDSN     = "gorm:gorm@tcp(localhost:3306)/gorm?charset=utf8&parseTime=True&loc=Local"'
./tests_all.sh
mysql -u root -e "CREATE USER 'gorm'@'localhost' IDENTIFIED BY 'gorm'; GRANT ALL PRIVILEGES ON *.* TO 'gorm'@'localhost'; FLUSH PRIVILEGES;"
./tests_all.sh
mysql -u root -e "CREATE DATABASE gorm;"
./tests_all.sh
grep -r "migrate" tests/
pwd
find_file 'migrate*'
open "/testbed/tests/migrate_test.go"
create init_db.go

