ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
open "Makefile"
open "README.md"
go version
apt-get update && apt-get install -y golang-1.22
go version
ls /usr/lib/go-1.22/bin
export PATH=$PATH:/usr/lib/go-1.22/bin
go version
docker --version && docker-compose --version
apt-get update && apt-get install -y docker.io docker-compose
docker --version && docker-compose --version
systemctl start docker
service docker status
dockerd &
docker run hello-world
make test-sqlite3
apt-get update && apt-get install -y make
make --version
make test-sqlite3
open "Makefile"
go test -v github.com/beego/beego/v2/client/orm
export ORM_DRIVER=sqlite3 && export ORM_SOURCE='file:memory_test?mode=memory' && go test -v github.com/beego/beego/v2/client/orm
