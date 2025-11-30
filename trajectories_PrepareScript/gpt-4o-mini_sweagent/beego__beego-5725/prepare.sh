
find_file '*.yml'
open "/testbed/.github/workflows/test.yml"
goto 99
go version
apt update
apt install -y golang-go docker.io
go version
systemctl status docker
service docker status
service docker start
docker --version
goto 50

docker pull postgres:latest
dockerd &
docker pull postgres:latest
mkdir -p /tmp/sqlite3 && touch /tmp/sqlite3/orm_test.db
GOPATH=/home/runner/go ORM_DRIVER=sqlite3 ORM_SOURCE=/tmp/sqlite3/orm_test.db go test -coverprofile=coverage_sqlite3.txt -covermode=atomic $(go list ./... | grep client/orm)
wget https://golang.org/dl/go1.20.7.linux-amd64.tar.gz
curl -LO https://golang.org/dl/go1.20.7.linux-amd64.tar.gz
apt remove -y golang-go
apt install -y golang-go
apt remove -y golang-go
wget https://golang.org/dl/go1.20.7.linux-amd64.tar.gz
apt update
apt list --upgradable
rm -rf /usr/local/go
tar -C /usr/local -xzf go1.20.7.linux-amd64.tar.gz
goto 30
GOPATH=/home/runner/go ORM_DRIVER=sqlite3 ORM_SOURCE=/tmp/sqlite3/orm_test.db go test -coverprofile=coverage_sqlite3.txt -covermode=atomic $(go list ./... | grep client/orm)

