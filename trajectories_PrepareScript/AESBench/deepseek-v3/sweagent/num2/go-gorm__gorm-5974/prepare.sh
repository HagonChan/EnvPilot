ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "README.md"
open "go.mod"
ls -la Makefile
ls -la tests
open "tests/tests_all.sh"
go version
apt-get update && apt-get install -y golang-1.16
apt-get install -y golang
go version
docker --version
apt-get install -y docker.io
docker --version
sqlite3 --version
apt-get install -y sqlite3
mysql --version
apt-get install -y mysql-server
psql --version
apt-get install -y postgresql
go env GOPATH
go build
go build
mkdir -p /root/go/src/github.com/jinzhu
git clone https://github.com/jinzhu/inflection.git /root/go/src/github.com/jinzhu/inflection
ping -c 4 github.com
apt-get install -y iputils-ping
ping -c 4 github.com
git clone https://github.com/jinzhu/inflection.git /root/go/src/github.com/jinzhu/inflection
wget https://github.com/jinzhu/inflection/archive/refs/heads/master.zip -O /root/go/src/github.com/jinzhu/inflection.zip
apt-get install -y wget
wget https://github.com/jinzhu/inflection/archive/refs/heads/master.zip -O /root/go/src/github.com/jinzhu/inflection.zip
unzip /root/go/src/github.com/jinzhu/inflection.zip -d /root/go/src/github.com/jinzhu/
apt-get install -y unzip
unzip /root/go/src/github.com/jinzhu/inflection.zip -d /root/go/src/github.com/jinzhu/
mv /root/go/src/github.com/jinzhu/inflection-master /root/go/src/github.com/jinzhu/inflection
wget https://github.com/jinzhu/now/archive/refs/heads/master.zip -O /root/go/src/github.com/jinzhu/now.zip
unzip /root/go/src/github.com/jinzhu/now.zip -d /root/go/src/github.com/jinzhu/
mv /root/go/src/github.com/jinzhu/now-master /root/go/src/github.com/jinzhu/now
go build
GOPROXY=direct go build
cd tests && ./tests_all.sh
go mod init gorm.io/gorm && go mod tidy
cd .. && go mod init gorm.io/gorm && go mod tidy
go get github.com/google/uuid@v1.3.0
