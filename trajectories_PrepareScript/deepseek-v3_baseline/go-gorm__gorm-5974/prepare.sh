ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -xzf go1.19.linux-amd64.tar.gz && sudo mv go /usr/local
curl -OL https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -xzf go1.19.linux-amd64.tar.gz && sudo mv go /usr/local
apt-get update && apt-get install -y curl
curl -OL https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -xzf go1.19.linux-amd64.tar.gz && sudo mv go /usr/local
mv go /usr/local
export GOROOT=/usr/local/go && export PATH=$PATH:$GOROOT/bin
go version
ls -la tests/
chmod +x tests/tests_all.sh
GORM_DIALECT=sqlite ./tests/tests_all.sh
curl -OL https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz && tar -xzf go1.21.0.linux-amd64.tar.gz && mv go /usr/local
rm -rf /usr/local/go && mv go /usr/local
export GOROOT=/usr/local/go && export PATH=$PATH:$GOROOT/bin
go version
GORM_DIALECT=sqlite ./tests/tests_all.sh
open "go.mod"
edit 'go 1.16' 'go 1.21'
go mod tidy
open "tests/tests_all.sh"
ls -la tests/
open "tests/go.mod"
edit 'go 1.16' 'go 1.21'
cd tests && go mod tidy && cd ..
GORM_DIALECT=sqlite ./tests/tests_all.sh
edit 'gorm.io/driver/postgres v1.4.6' 'gorm.io/driver/postgres v1.4.5'
cd tests && go mod tidy && cd ..
GORM_DIALECT=sqlite ./tests/tests_all.sh
edit 'github.com/microsoft/go-mssqldb v0.19.0' 'github.com/microsoft/go-mssqldb v0.17.0'
cd tests && go mod tidy && cd ..
GORM_DIALECT=sqlite ./tests/tests_all.sh
edit 'golang.org/x/crypto v0.4.0' 'golang.org/x/crypto v0.3.0'
cd tests && go mod tidy && cd ..
GORM_DIALECT=sqlite ./tests/tests_all.sh
edit 'golang.org/x/text v0.5.0' 'golang.org/x/text v0.4.0'
cd tests && go mod tidy && cd ..
GORM_DIALECT=sqlite ./tests/tests_all.sh
edit 'github.com/microsoft/go-mssqldb v0.17.0' 'github.com/microsoft/go-mssqldb v0.16.0'
cd tests && go mod tidy && cd ..
GORM_DIALECT=sqlite ./tests/tests_all.sh
edit 'golang.org/x/crypto v0.3.0' 'golang.org/x/crypto v0.2.0'
cd tests && go mod tidy && cd ..
GORM_DIALECT=sqlite ./tests/tests_all.sh
edit 'golang.org/x/text v0.4.0' 'golang.org/x/text v0.3.0'
cd tests && go mod tidy && cd ..
GORM_DIALECT=sqlite ./tests/tests_all.sh
edit 'github.com/microsoft/go-mssqldb v0.17.0' 'github.com/microsoft/go-mssqldb v0.16.0'

