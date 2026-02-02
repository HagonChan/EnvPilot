find_file '.github/workflows/*.yml'
find_file .gitlab-ci.yml
find_file .circleci/config.yml
find_file azure-pipelines.yml
find_file Jenkinsfile
find_file requirements.txt
find_file setup.py
find_file pyproject.toml
find_file package.json
find_file README.md
open "/testbed/README.md"
find_file Makefile
open "/testbed/Makefile"
ls -la
open "/testbed/.github/workflows/test.yml"
go mod tidy
apt-get update
apt-get install -y golang
go mod tidy
go version
apt-get install -y golang-1.20
go version
update-alternatives --config go
which go
/usr/bin/go version
export PATH=/usr/lib/go-1.20/bin:$PATH
go version
go test ./...
export GOPROXY=https://goproxy.io,direct
go test ./...
apt-get install -y redis-server
service redis-server start
go test ./...
apt-get install -y memcached
service memcached start
go test ./...
apt-get install -y ssdb-server
apt-get install -y ssdb
apt-get install -y etcd
service etcd start
go test ./...
mkdir -p conf
echo "path2 = /home/go" > conf/app.conf
go test ./...
echo "path2 = /home/go" > conf/app.conf
go test ./...
echo "path2 = /home/go" > conf/app.conf
go test ./...
echo "path2 = /home/go" > conf/app.conf

