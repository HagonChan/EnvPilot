ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "go.mod"
wget https://go.dev/dl/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
curl -OL https://go.dev/dl/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
apt-get update && apt-get install -y curl
curl -OL https://go.dev/dl/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go mod download
./tests/tests_all.sh
edit 'go 1.16' 'go 1.21'
curl -OL https://go.dev/dl/go1.21.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
curl -OL https://go.dev/dl/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=/usr/local/go/bin:$PATH
go version
go mod download
./tests/tests_all.sh
open "go.mod"
go mod graph
open "./tests/tests_all.sh"
ls -la tests/
open "tests/go.mod"
edit 'go 1.16' 'go 1.21'
cd tests && go mod tidy && cd ..
./tests/tests_all.sh
edit 'github.com/jackc/pgx/v5 v5.7.5' 'github.com/jackc/pgx/v5 v5.3.1'
open "tests/go.mod"
edit 'github.com/jackc/pgx/v5 v5.2.0 // indirect' 'github.com/jackc/pgx/v5 v5.0.4 // indirect'
edit 'github.com/microsoft/go-mssqldb v0.19.0 // indirect' 'github.com/microsoft/go-mssqldb v0.18.0 // indirect'
edit 'golang.org/x/crypto v0.4.0 // indirect' 'golang.org/x/crypto v0.3.0 // indirect'
edit 'golang.org/x/text v0.5.0 // indirect' 'golang.org/x/text v0.4.0 // indirect'
cd tests && go mod tidy && cd ..
./tests/tests_all.sh
open "tests/go.mod"
edit 'github.com/jackc/pgx/v5 v5.2.0 // indirect' 'github.com/jackc/pgx/v5 v5.0.4 // indirect'
edit 'github.com/microsoft/go-mssqldb v0.18.0 // indirect' 'github.com/microsoft/go-mssqldb v0.17.0 // indirect'
edit 'golang.org/x/crypto v0.4.0 // indirect' 'golang.org/x/crypto v0.3.0 // indirect'
edit 'golang.org/x/text v0.5.0 // indirect' 'golang.org/x/text v0.4.0 // indirect'
cd tests && go mod tidy && cd ..
./tests/tests_all.sh
open "tests/go.mod"
edit 'github.com/jackc/pgx/v5 v5.2.0 // indirect' 'github.com/jackc/pgx/v5 v5.0.4 // indirect'
edit 'golang.org/x/crypto v0.4.0 // indirect' 'golang.org/x/crypto v0.3.0 // indirect'
edit 'golang.org/x/text v0.5.0 // indirect' 'golang.org/x/text v0.4.0 // indirect'
cd tests && go mod tidy && cd ..
./tests/tests_all.sh
open "tests/go.mod"
edit 'github.com/jackc/pgx/v5 v5.2.0 // indirect' 'github.com/jackc/pgx/v5 v5.0.4 // indirect'
edit 'golang.org/x/crypto v0.4.0 // indirect' 'golang.org/x/crypto v0.3.0 // indirect'

