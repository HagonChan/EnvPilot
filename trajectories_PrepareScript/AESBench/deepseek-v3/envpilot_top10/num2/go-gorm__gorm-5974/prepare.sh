ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "go.mod"
wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin && export GOPATH=$HOME/go
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin && export GOPATH=$HOME/go
go version
echo $GOPATH && echo $PATH
go mod download
ls -la tests/
chmod +x tests/tests_all.sh && tests/tests_all.sh
rm -rf /usr/local/go && wget https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version && go mod download && tests/tests_all.sh
open "go.mod"
edit 'go 1.16' 'go 1.21'
edit 'require (
	github.com/jinzhu/inflection v1.0.0
	github.com/jinzhu/now v1.1.4
)' 'require (
	github.com/jinzhu/inflection v1.0.0
	github.com/jinzhu/now v1.1.4
	gorm.io/driver/postgres v1.4.6
	gorm.io/driver/sqlite v1.4.4
	gorm.io/driver/mysql v1.4.5
	gorm.io/driver/sqlserver v1.4.1
)'
open "go.mod"
edit 'require (
	github.com/jinzhu/inflection v1.0.0
	github.com/jinzhu/now v1.1.4
)' 'require (
	github.com/jinzhu/inflection v1.0.0
	github.com/jinzhu/now v1.1.4
	gorm.io/driver/postgres v1.5.2
	gorm.io/driver/sqlite v1.5.2
	gorm.io/driver/mysql v1.5.2
	gorm.io/driver/sqlserver v1.5.2
)'
open "go.mod"
edit 'require (
	github.com/jinzhu/inflection v1.0.0
	github.com/jinzhu/now v1.1.4
)' 'require (
	github.com/jinzhu/inflection v1.0.0
	github.com/jinzhu/now v1.1.4
	gorm.io/driver/postgres v1.5.2
	gorm.io/driver/sqlite v1.5.3
	gorm.io/gorm v1.25.4
)'
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"
open "go.mod"

