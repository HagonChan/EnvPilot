ls -la
ls -la .github/workflows
open ".github/workflows/tests.yml"
open "go.mod"
wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
apt-get update && apt-get install -y wget
wget https://dl.google.com/go/go1.19.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
export GOPATH=$HOME/go && export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
go mod download
./tests/tests_all.sh
rm -rf /usr/local/go && wget https://dl.google.com/go/go1.21.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
export GOPATH=$HOME/go && export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
go mod download
./tests/tests_all.sh
rm -rf /usr/local/go && wget https://dl.google.com/go/go1.24.0.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin
go version
export GOPATH=$HOME/go && export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
go mod download
./tests/tests_all.sh
go mod download
./tests/tests_all.sh
export GOPROXY=direct && go mod download
./tests/tests_all.sh
apt-get update && apt-get install -y ca-certificates
sed -i '/jammy-security/d' /etc/apt/sources.list && apt-get update && apt-get install -y ca-certificates
export GOPROXY=direct && go mod download
./tests/tests_all.sh
go env
ping -c 4 github.com
apt-get update && apt-get install -y iputils-ping
ping -c 4 github.com
apt-get update && apt-get install -y --reinstall ca-certificates
go mod download -x
curl -v https://api.github.com
apt-get update && apt-get install -y curl
curl -v https://api.github.com
unset https_proxy no_proxy && curl -v https://api.github.com
export GOPROXY=direct && ./tests/tests_all.sh
git clone https://github.com/go-sql-driver/mysql.git /root/go/pkg/mod/github.com/go-sql-driver/mysql@v1.7.1
git clone https://github.com/google/uuid.git /root/go/pkg/mod/github.com/google/uuid@v1.3.0
git clone https://github.com/jackc/pgx.git /root/go/pkg/mod/github.com/jackc/pgx/v5@v5.3.1
git clone https://github.com/go-gorm/gorm.git /root/go/pkg/mod/gorm.io/gorm@v1.23.8
./tests/tests_all.sh
git clone https://github.com/golang/crypto.git /root/go/pkg/mod/golang.org/x/crypto@v0.38.0
git clone https://github.com/golang/text.git /root/go/pkg/mod/golang.org/x/text@v0.25.0
git clone https://github.com/golang/sync.git /root/go/pkg/mod/golang.org/x/sync@v0.14.0
./tests/tests_all.sh

