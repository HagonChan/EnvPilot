ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "go.mod"
go version
wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
export GOPATH=$HOME/go && export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
go mod download
ls -la tests/
open "tests/tests_all.sh"
apt-get update && apt-get install -y git gcc
chmod +x tests/tests_all.sh && ./tests/tests_all.sh
rm -rf /usr/local/go && wget https://go.dev/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
./tests/tests_all.sh
open "go.mod"
edit 'go 1.16' 'go 1.21' True
insert '
	gorm.io/driver/mysql v1.4.5
	gorm.io/driver/postgres v1.4.6
	gorm.io/driver/sqlite v1.4.4
	gorm.io/driver/sqlserver v1.4.1' 8
go mod download
./tests/tests_all.sh
edit 'gorm.io/driver/mysql v1.4.5
	gorm.io/driver/postgres v1.4.6
	gorm.io/driver/sqlite v1.4.4
	gorm.io/driver/sqlserver v1.4.1' 'gorm.io/driver/mysql v1.3.6
	gorm.io/driver/postgres v1.3.9
	gorm.io/driver/sqlite v1.3.4
	gorm.io/driver/sqlserver v1.3.2' True
open "go.mod"
edit 'gorm.io/driver/postgres v1.4.6' 'gorm.io/driver/postgres v1.4.5' True
go mod download
./tests/tests_all.sh
rm -rf /usr/local/go
wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
edit 'go 1.21' 'go 1.19' True
go mod download
./tests/tests_all.sh
edit 'gorm.io/driver/postgres v1.4.5' 'gorm.io/driver/postgres v1.4.4' True
go mod download
./tests/tests_all.sh
edit 'gorm.io/driver/postgres v1.4.4' 'gorm.io/driver/postgres v1.4.3' True
go mod download
./tests/tests_all.sh
edit 'gorm.io/driver/postgres v1.4.3' 'gorm.io/driver/postgres v1.4.2' True
go mod download
./tests/tests_all.sh
edit 'gorm.io/driver/postgres v1.4.2' 'gorm.io/driver/postgres v1.4.1' True
go mod download
./tests/tests_all.sh
edit 'gorm.io/driver/postgres v1.4.1' 'gorm.io/driver/postgres v1.4.0' True
go mod download
./tests/tests_all.sh

