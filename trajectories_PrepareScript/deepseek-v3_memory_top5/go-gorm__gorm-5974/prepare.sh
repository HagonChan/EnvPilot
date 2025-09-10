ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "go.mod"
wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
curl -OL https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y curl
curl -OL https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go mod download
ls -la tests/
chmod +x tests/tests_all.sh && ./tests/tests_all.sh
open "go.mod"
edit 'go 1.16' 'go 1.21'
go mod download
./tests/tests_all.sh
curl -OL https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go mod download
./tests/tests_all.sh
open "go.mod"
go mod why
go list -m all
open "tests/tests_all.sh"
edit 'go get -u -t ./...' '# go get -u -t ./...'
./tests/tests_all.sh
apt-get update && apt-get install -y docker-compose
./tests/tests_all.sh
service docker start
systemctl start docker
dockerd
sudo dockerd
dockerd --debug
edit 'GORM_DIALECT=sqlserver go test -v ./...' '# GORM_DIALECT=sqlserver go test -v ./...'
open "tests/tests_all.sh"
edit 'dialects=("sqlite" "mysql" "postgres" "sqlserver")' 'dialects=("sqlite" "mysql" "postgres")'
./tests/tests_all.sh
edit '# SqlServer for Mac M1
if [[ -z $GITHUB_ACTION ]]; then
  if [ -d tests ]
  then
    cd tests
    if [[ $(uname -a) == *" arm64" ]]; then
      MSSQL_IMAGE=mcr.microsoft.com/azure-sql-edge docker-compose start || true
      go install github.com/microsoft/go-sqlcmd/cmd/sqlcmd@latest || true
      SQLCMDPASSWORD=LoremIpsum86 sqlcmd -U sa -S localhost:9930 -Q "IF DB_ID('"'"'gorm'"'"') IS NULL CREATE DATABASE gorm" > /dev/null || true
      SQLCMDPASSWORD=LoremIpsum86 sqlcmd -U sa -S localhost:9930 -Q "IF SUSER_ID (N'"'"'gorm'"'"') IS NULL CREATE LOGIN gorm WITH PASSWORD = '"'"'LoremIpsum86'"'"';" > /dev/null || true
      SQLCMDPASSWORD=LoremIpsum86 sqlcmd -U sa -S localhost:9930 -Q "IF USER_ID (N'"'"'gorm'"'"') IS NULL CREATE USER gorm FROM LOGIN gorm; ALTER SERVER ROLE sysadmin ADD MEMBER [gorm];" > /dev/null || true
    else
      docker-compose start
    fi
    cd ..
  fi
fi' '# SqlServer for Mac M1
# if [[ -z $GITHUB_ACTION ]]; then
#   if [ -d tests ]
#   then
#     cd tests
#     if [[ $(uname -a) == *" arm64" ]]; then
#       MSSQL_IMAGE=mcr.microsoft.com/azure-sql-edge docker-compose start || true
#       go install github.com/microsoft/go-sqlcmd/cmd/sqlcmd@latest || true
#       SQLCMDPASSWORD=LoremIpsum86 sqlcmd -U sa -S localhost:9930 -Q "IF DB_ID('"'"'gorm'"'"') IS NULL CREATE DATABASE gorm" > /dev/null || true
#       SQLCMDPASSWORD=LoremIpsum86 sqlcmd -U sa -S localhost:9930 -Q "IF SUSER_ID (N'"'"'gorm'"'"') IS NULL CREATE LOGIN gorm WITH PASSWORD = '"'"'LoremIpsum86'"'"';" > /dev/null || true
#       SQLCMDPASSWORD=LoremIpsum86 sqlcmd -U sa -S localhost:9930 -Q "IF USER_ID (N'"'"'gorm'"'"') IS NULL CREATE USER gorm FROM LOGIN gorm; ALTER SERVER ROLE sysadmin ADD MEMBER [gorm];" > /dev/null || true
#     else
#       docker-compose start
#     fi
#     cd ..
#   fi
# fi'
./tests/tests_all.sh
edit 'GORM_DIALECT=${dialect} go test -race -count=1 ./...' 'CGO_ENABLED=1 GORM_DIALECT=${dialect} go test -race -count=1 ./...'
edit 'if [ "$GORM_VERBOSE" = "" ]
  then
    GORM_DIALECT=${dialect} go test -race -count=1 ./...' 'if [ "$GORM_VERBOSE" = "" ]
  then
    CGO_ENABLED=1 GORM_DIALECT=${dialect} go test -race -count=1 ./...'
open "tests/tests_all.sh"
edit 'GORM_DIALECT=${dialect} go test -race -count=1 ./...' 'CGO_ENABLED=1 GORM_DIALECT=${dialect} go test -race -count=1 ./...'
edit 'if [ "$GORM_VERBOSE" = "" ]
    then
      GORM_DIALECT=${dialect} go test -race -count=1 ./...' 'if [ "$GORM_VERBOSE" = "" ]
    then
      CGO_ENABLED=1 GORM_DIALECT=${dialect} go test -race -count=1 ./...'
edit 'if [ -d tests ]
      then
        cd tests
        GORM_DIALECT=${dialect} go test -race -count=1 ./...' 'if [ -d tests ]
      then
        cd tests
        CGO_ENABLED=1 GORM_DIALECT=${dialect} go test -race -count=1 ./...'
edit 'else
      GORM_DIALECT=${dialect} go test -race -count=1 -v ./...
      if [ -d tests ]
      then
        cd tests
        GORM_DIALECT=${dialect} go test -race -count=1 -v ./...' 'else
      CGO_ENABLED=1 GORM_DIALECT=${dialect} go test -race -count=1 -v ./...
      if [ -d tests ]
      then
        cd tests
        CGO_ENABLED=1 GORM_DIALECT=${dialect} go test -race -count=1 -v ./...'
./tests/tests_all.sh
rm -rf /usr/local/go && curl -OL https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version

